"""
Clean, well-written Python module demonstrating best practices.
"""

from typing import List, Dict, Optional
import logging
from dataclasses import dataclass
from contextlib import contextmanager


# Configure logging
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)


@dataclass
class User:
    """User data model with proper typing."""
    name: str
    email: str
    age: int
    
    def __post_init__(self):
        """Validate user data after initialization."""
        if not self.email or '@' not in self.email:
            raise ValueError("Invalid email address")
        if self.age < 0 or self.age > 150:
            raise ValueError("Invalid age")


class UserManager:
    """Manages user operations with proper error handling."""
    
    def __init__(self):
        self._users: List[User] = []
    
    def add_user(self, user: User) -> bool:
        """Add a user with validation."""
        try:
            # Validate user data
            if self._find_user_by_email(user.email):
                logger.warning(f"User with email {user.email} already exists")
                return False
            
            self._users.append(user)
            logger.info(f"Added user: {user.name}")
            return True
            
        except Exception as e:
            logger.error(f"Failed to add user: {e}")
            return False
    
    def _find_user_by_email(self, email: str) -> Optional[User]:
        """Find user by email (private method)."""
        for user in self._users:
            if user.email == email:
                return user
        return None
    
    def get_users_by_age_range(self, min_age: int, max_age: int) -> List[User]:
        """Get users within age range."""
        return [
            user for user in self._users 
            if min_age <= user.age <= max_age
        ]
    
    @property
    def user_count(self) -> int:
        """Get total number of users."""
        return len(self._users)


@contextmanager
def safe_file_operation(file_path: str, mode: str = 'r'):
    """Context manager for safe file operations."""
    file_handle = None
    try:
        file_handle = open(file_path, mode)
        yield file_handle
    except IOError as e:
        logger.error(f"File operation failed: {e}")
        raise
    finally:
        if file_handle:
            file_handle.close()


def process_data_efficiently(data: List[int]) -> Dict[str, float]:
    """Process numerical data efficiently."""
    if not data:
        return {"mean": 0.0, "max": 0.0, "min": 0.0}
    
    total = sum(data)
    count = len(data)
    
    return {
        "mean": total / count,
        "max": max(data),
        "min": min(data)
    }


def main():
    """Main function demonstrating the clean code."""
    # Create user manager
    manager = UserManager()
    
    # Add some users
    users = [
        User("Alice", "alice@example.com", 25),
        User("Bob", "bob@example.com", 30),
        User("Charlie", "charlie@example.com", 35)
    ]
    
    for user in users:
        manager.add_user(user)
    
    # Get users in age range
    young_users = manager.get_users_by_age_range(20, 30)
    logger.info(f"Found {len(young_users)} young users")
    
    # Process some data
    sample_data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    stats = process_data_efficiently(sample_data)
    logger.info(f"Data statistics: {stats}")


if __name__ == "__main__":
    main()
