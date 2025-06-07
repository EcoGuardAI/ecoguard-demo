#!/usr/bin/env python3
"""
Sample Flask application with various code quality issues
for demonstrating EcoGuard AI analysis.
"""

import os
import sys
import json
import requests
import pandas as pd
import numpy as np

from flask import Flask, request, jsonify, render_template
from werkzeug.security import generate_password_hash


app = Flask(__name__)

# Security issue: hardcoded secret key
app.secret_key = "hardcoded_secret_123"

# Global variables (code smell)
users_data = []
config_data = {}


def process_user_data(name, email, age, salary, address, phone, ssn, credit_card):
    """Function with too many parameters (quality issue)"""
    user = {
        'name': name,
        'email': email, 
        'age': age,
        'salary': salary,
        'address': address,
        'phone': phone,
        'ssn': ssn,  # Security issue: storing SSN
        'credit_card': credit_card  # Security issue: storing credit card
    }
    return user


def complex_calculation(data):
    """Function with high complexity (quality issue)"""
    result = 0
    for item in data:
        if item > 0:
            if item % 2 == 0:
                if item > 100:
                    if item < 1000:
                        if item % 4 == 0:
                            result += item * 2
                        else:
                            result += item
                    else:
                        result += item / 2
                else:
                    result += item * 3
            else:
                if item > 50:
                    result += item * 1.5
                else:
                    result += item
        else:
            result -= abs(item)
    return result


@app.route('/api/users', methods=['POST'])
def create_user():
    """API endpoint with security vulnerabilities"""
    data = request.get_json()
    
    # Security issue: no input validation
    user = process_user_data(
        data['name'],
        data['email'], 
        data['age'],
        data['salary'],
        data['address'],
        data['phone'],
        data['ssn'],
        data['credit_card']
    )
    
    users_data.append(user)
    
    # Security issue: SQL injection vulnerability (simulated)
    query = f"INSERT INTO users (name, email) VALUES ('{data['name']}', '{data['email']}')"
    
    return jsonify({'success': True, 'user_id': len(users_data)})


@app.route('/api/search')
def search_users():
    """Inefficient search with potential performance issues"""
    query = request.args.get('q', '')
    
    # Inefficient: O(n) search through all users
    results = []
    for user in users_data:
        if query.lower() in user['name'].lower():
            results.append(user)
    
    # Performance issue: loading large datasets
    df = pd.DataFrame(users_data)
    processed_data = df.apply(lambda x: complex_calculation([x['age'], x['salary']]), axis=1)
    
    return jsonify({'results': results, 'count': len(results)})


@app.route('/api/process_file', methods=['POST'])
def process_file():
    """File processing with resource management issues"""
    file_path = request.json.get('file_path')
    
    # Resource leak: file not properly closed
    file = open(file_path, 'r')
    content = file.read()
    # Missing file.close()
    
    # Memory issue: loading entire file into memory
    lines = content.split('\n')
    processed_lines = []
    
    for line in lines:
        # Inefficient string concatenation
        processed_line = ""
        for char in line:
            processed_line += char.upper()
        processed_lines.append(processed_line)
    
    return jsonify({'processed_lines': processed_lines})


def unused_function():
    """This function is never called (dead code)"""
    unused_variable = "This is never used"
    another_unused = [1, 2, 3, 4, 5]
    return unused_variable


# Unused imports at the top
import datetime  # This import is not used
import hashlib   # This import is not used


if __name__ == '__main__':
    # Security issue: debug mode in production
    app.run(debug=True, host='0.0.0.0')
