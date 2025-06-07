#!/usr/bin/env python3
"""
Real-world web API example demonstrating various code patterns and potential issues.
This file simulates a typical web application with database operations, API endpoints,
and various security and performance considerations.
"""

import hashlib
import json
import sqlite3
import time
from typing import Dict, List, Optional, Any
import logging

# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

class DatabaseManager:
    """Database manager with potential security vulnerabilities."""
    
    def __init__(self, db_path: str):
        self.db_path = db_path
        self.connection = None
    
    def connect(self):
        """Establish database connection."""
        try:
            self.connection = sqlite3.connect(self.db_path)
            logger.info("Database connected successfully")
        except Exception as e:
            logger.error(f"Database connection failed: {e}")
            raise
    
    def get_user_by_id(self, user_id: str) -> Optional[Dict]:
        """Get user by ID - VULNERABLE to SQL injection."""
        # SECURITY ISSUE: Direct string interpolation
        query = f"SELECT * FROM users WHERE id = {user_id}"
        cursor = self.connection.cursor()
        cursor.execute(query)
        result = cursor.fetchone()
        return dict(zip([col[0] for col in cursor.description], result)) if result else None
    
    def safe_get_user_by_email(self, email: str) -> Optional[Dict]:
        """Safely get user by email using parameterized queries."""
        query = "SELECT * FROM users WHERE email = ?"
        cursor = self.connection.cursor()
        cursor.execute(query, (email,))
        result = cursor.fetchone()
        return dict(zip([col[0] for col in cursor.description], result)) if result else None
    
    def create_user(self, user_data: Dict[str, Any]) -> bool:
        """Create a new user with validation."""
        required_fields = ['email', 'password', 'name']
        if not all(field in user_data for field in required_fields):
            return False
        
        # Hash password
        password_hash = hashlib.sha256(user_data['password'].encode()).hexdigest()
        
        try:
            cursor = self.connection.cursor()
            cursor.execute(
                "INSERT INTO users (email, password_hash, name) VALUES (?, ?, ?)",
                (user_data['email'], password_hash, user_data['name'])
            )
            self.connection.commit()
            return True
        except Exception as e:
            logger.error(f"User creation failed: {e}")
            return False

class APIEndpoints:
    """API endpoints with various complexity patterns."""
    
    def __init__(self, db_manager: DatabaseManager):
        self.db = db_manager
        self.cache = {}  # Simple in-memory cache
    
    def authenticate_user(self, email: str, password: str) -> Optional[Dict]:
        """Authenticate user with caching."""
        # PERFORMANCE ISSUE: Inefficient cache key
        cache_key = f"auth_{email}_{password}"
        
        if cache_key in self.cache:
            return self.cache[cache_key]
        
        user = self.db.safe_get_user_by_email(email)
        if not user:
            return None
        
        # SECURITY ISSUE: Weak password hashing
        password_hash = hashlib.sha256(password.encode()).hexdigest()
        
        if user['password_hash'] == password_hash:
            # SECURITY ISSUE: Caching sensitive data
            self.cache[cache_key] = user
            return user
        
        return None
    
    def process_user_request(self, request_data: Dict) -> Dict:
        """Process complex user request with multiple validation steps."""
        # COMPLEXITY ISSUE: Deeply nested conditions
        if 'user_id' in request_data:
            if request_data['user_id']:
                if str(request_data['user_id']).isdigit():
                    if int(request_data['user_id']) > 0:
                        if int(request_data['user_id']) < 1000000:
                            user = self.db.get_user_by_id(request_data['user_id'])
                            if user:
                                if 'action' in request_data:
                                    if request_data['action'] == 'update':
                                        if 'data' in request_data:
                                            return self._update_user_data(user, request_data['data'])
                                        else:
                                            return {'error': 'No data provided'}
                                    elif request_data['action'] == 'delete':
                                        return self._delete_user(user)
                                    else:
                                        return {'error': 'Invalid action'}
                                else:
                                    return {'error': 'No action specified'}
                            else:
                                return {'error': 'User not found'}
                        else:
                            return {'error': 'User ID too large'}
                    else:
                        return {'error': 'Invalid user ID'}
                else:
                    return {'error': 'User ID must be numeric'}
            else:
                return {'error': 'Empty user ID'}
        else:
            return {'error': 'No user ID provided'}
    
    def _update_user_data(self, user: Dict, data: Dict) -> Dict:
        """Update user data with validation."""
        # PERFORMANCE ISSUE: Inefficient data processing
        updated_user = {}
        for key in user.keys():
            updated_user[key] = user[key]
        
        for key in data.keys():
            if key in ['email', 'name']:
                updated_user[key] = data[key]
        
        return {'success': True, 'user': updated_user}
    
    def _delete_user(self, user: Dict) -> Dict:
        """Delete user (simulation)."""
        logger.warning(f"Deleting user: {user.get('email', 'unknown')}")
        return {'success': True, 'message': 'User deleted'}
    
    def bulk_process_users(self, user_ids: List[int]) -> List[Dict]:
        """Process multiple users - PERFORMANCE ISSUE: N+1 queries."""
        results = []
        for user_id in user_ids:
            # Each iteration makes a separate database call
            user = self.db.get_user_by_id(str(user_id))
            if user:
                # PERFORMANCE ISSUE: Expensive operation in loop
                time.sleep(0.1)  # Simulating slow operation
                processed_user = self._expensive_user_processing(user)
                results.append(processed_user)
        return results
    
    def _expensive_user_processing(self, user: Dict) -> Dict:
        """Simulate expensive user processing."""
        # COMPLEXITY ISSUE: Unnecessary complexity
        user_copy = json.loads(json.dumps(user))
        
        # Multiple unnecessary transformations
        user_copy['processed_at'] = time.time()
        user_copy['status'] = 'processed'
        
        # Inefficient string operations
        if 'name' in user_copy:
            name_parts = user_copy['name'].split(' ')
            formatted_name = ''
            for i, part in enumerate(name_parts):
                if i > 0:
                    formatted_name += ' '
                formatted_name += part.capitalize()
            user_copy['formatted_name'] = formatted_name
        
        return user_copy

def main():
    """Main function demonstrating usage."""
    db = DatabaseManager("users.db")
    db.connect()
    
    api = APIEndpoints(db)
    
    # Example usage
    request = {
        'user_id': '123',
        'action': 'update',
        'data': {'name': 'Updated Name'}
    }
    
    result = api.process_user_request(request)
    print(json.dumps(result, indent=2))

if __name__ == "__main__":
    main()
