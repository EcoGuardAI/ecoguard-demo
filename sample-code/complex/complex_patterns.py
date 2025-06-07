"""
Complex Python patterns for demonstrating advanced AST research capabilities.
This file contains challenging constructs for AST analysis and pattern recognition.
"""

import ast
import re
import hashlib
import sqlite3
import subprocess
from pathlib import Path
from functools import wraps, reduce, partial
from concurrent.futures import ThreadPoolExecutor, as_completed
from typing import (
    TypeVar, Generic, Protocol, Callable, Iterator, 
    Any, Optional, Union, Tuple, Set
)


T = TypeVar('T')
U = TypeVar('U')


class DatabaseConnection(Protocol):
    """Protocol example for AST type analysis"""
    def execute(self, query: str, params: Tuple = ()) -> Any: ...
    def fetchall(self) -> List[Dict[str, Any]]: ...
    def close(self) -> None: ...


class ComplexGenericClass(Generic[T, U]):
    """Complex generic class with multiple type parameters"""
    
    def __init__(self, items: List[T], metadata: Dict[str, U]):
        self._items: List[T] = items
        self._metadata: Dict[str, U] = metadata
        self._cache: Dict[str, Any] = {}
        self._processors: List[Callable[[T], T]] = []
    
    def add_processor(self, func: Callable[[T], T]) -> 'ComplexGenericClass[T, U]':
        """Method chaining example"""
        self._processors.append(func)
        return self
    
    def process_items(self) -> Iterator[T]:
        """Complex generator with nested processing"""
        for item in self._items:
            processed_item = item
            
            # Chain all processors
            for processor in self._processors:
                try:
                    processed_item = processor(processed_item)
                except Exception as e:
                    print(f"Processor failed: {e}")
                    continue
            
            # Complex conditional yield
            if self._should_yield(processed_item):
                yield processed_item
    
    def _should_yield(self, item: T) -> bool:
        """Complex decision logic"""
        if not item:
            return False
        
        # Multiple nested conditions
        if hasattr(item, '__len__'):
            if len(item) > 0:
                if hasattr(item, 'strip'):
                    return bool(item.strip())
                else:
                    return True
            else:
                return False
        elif hasattr(item, '__iter__'):
            try:
                return len(list(item)) > 0
            except (TypeError, ValueError):
                return True
        else:
            return item is not None


def advanced_decorator_factory(retries: int = 3, delay: float = 1.0):
    """Decorator factory with complex error handling"""
    
    def decorator(func: Callable[..., T]) -> Callable[..., T]:
        @wraps(func)
        def wrapper(*args, **kwargs) -> T:
            last_exception = None
            
            for attempt in range(retries + 1):
                try:
                    # Complex pre-processing
                    processed_args = []
                    for arg in args:
                        if isinstance(arg, str) and len(arg) > 100:
                            processed_args.append(arg[:100] + "...")
                        elif isinstance(arg, (list, tuple)) and len(arg) > 10:
                            processed_args.append(arg[:10])
                        else:
                            processed_args.append(arg)
                    
                    # Execute function
                    result = func(*processed_args, **kwargs)
                    
                    # Complex post-processing
                    if isinstance(result, dict):
                        return {k: v for k, v in result.items() if v is not None}
                    elif isinstance(result, (list, tuple)):
                        return [item for item in result if item is not None]
                    else:
                        return result
                        
                except Exception as e:
                    last_exception = e
                    if attempt < retries:
                        import time
                        time.sleep(delay * (attempt + 1))
                    else:
                        raise last_exception
            
            raise last_exception or RuntimeError("Unknown error")
        
        return wrapper
    return decorator


@advanced_decorator_factory(retries=5, delay=0.5)
def complex_data_processor(data: List[Dict[str, Any]]) -> Dict[str, Any]:
    """Function with complex nested processing logic"""
    
    # Multiple comprehensions and transformations
    categorized_data = {
        category: [
            {
                **item,
                'processed_score': (
                    item.get('score', 0) * 1.5 
                    if item.get('priority', 'normal') == 'high'
                    else item.get('score', 0) * 1.0
                ),
                'tags': [
                    tag.strip().lower() 
                    for tag in item.get('tags', '').split(',') 
                    if tag.strip()
                ]
            }
            for item in data 
            if item.get('category') == category and item.get('active', False)
        ]
        for category in {
            item.get('category', 'uncategorized') 
            for item in data 
            if isinstance(item, dict)
        }
    }
    
    # Complex aggregations with nested loops
    category_stats = {}
    for category, items in categorized_data.items():
        stats = {
            'count': len(items),
            'total_score': 0,
            'avg_score': 0,
            'tag_frequency': {},
            'priority_distribution': {'high': 0, 'normal': 0, 'low': 0}
        }
        
        for item in items:
            # Nested processing with multiple conditions
            score = item.get('processed_score', 0)
            stats['total_score'] += score
            
            # Complex tag processing
            for tag in item.get('tags', []):
                if tag not in stats['tag_frequency']:
                    stats['tag_frequency'][tag] = 0
                stats['tag_frequency'][tag] += 1
            
            # Priority distribution
            priority = item.get('priority', 'normal')
            if priority in stats['priority_distribution']:
                stats['priority_distribution'][priority] += 1
        
        # Calculate averages
        if stats['count'] > 0:
            stats['avg_score'] = stats['total_score'] / stats['count']
        
        category_stats[category] = stats
    
    return {
        'data': categorized_data,
        'stats': category_stats,
        'summary': {
            'total_categories': len(categorized_data),
            'total_items': sum(len(items) for items in categorized_data.values()),
            'avg_items_per_category': (
                sum(len(items) for items in categorized_data.values()) / len(categorized_data)
                if categorized_data else 0
            )
        }
    }


def potential_security_issues():
    """Function with patterns that security analysis might flag"""
    
    # SQL injection potential (for demo purposes)
    def unsafe_query(user_id: str) -> str:
        query = f"SELECT * FROM users WHERE id = {user_id}"  # Unsafe
        return query
    
    # Command injection potential (for demo purposes)
    def unsafe_command(filename: str) -> str:
        command = f"cat {filename}"  # Unsafe
        return command
    
    # Hard-coded secrets (for demo purposes)
    API_KEY = "sk-1234567890abcdef"  # This would be flagged
    DATABASE_PASSWORD = "super_secret_password"  # This would be flagged
    
    # Path traversal potential (for demo purposes)
    def read_file(filename: str) -> str:
        with open(f"data/{filename}", 'r') as f:  # Potentially unsafe
            return f.read()
    
    return {
        'query': unsafe_query("'; DROP TABLE users; --"),
        'command': unsafe_command("../../../etc/passwd"),
        'api_key': API_KEY,
        'content': read_file("../sensitive.txt")
    }


class MetaclassExample(type):
    """Metaclass example for advanced AST analysis"""
    
    def __new__(cls, name, bases, namespace):
        # Complex metaclass logic
        for key, value in list(namespace.items()):
            if callable(value) and not key.startswith('_'):
                namespace[key] = advanced_decorator_factory()(value)
        
        return super().__new__(cls, name, bases, namespace)


class AutoDecoratedClass(metaclass=MetaclassExample):
    """Class using custom metaclass"""
    
    def method_one(self, x: int) -> int:
        return x * 2
    
    def method_two(self, data: List[str]) -> List[str]:
        return [item.upper() for item in data if item]


def complex_async_simulation():
    """Simulate async patterns for AST analysis"""
    
    # Complex nested function definitions
    def outer_function(multiplier: int):
        def middle_function(data: List[int]):
            def inner_function(x: int) -> int:
                if x > 0:
                    if x % 2 == 0:
                        return x * multiplier * 2
                    else:
                        return x * multiplier + 1
                else:
                    return 0
            
            return [inner_function(item) for item in data if inner_function(item) > 0]
        
        return middle_function
    
    # Function with multiple decorators
    @staticmethod
    @advanced_decorator_factory(retries=3)
    def static_processor(items: List[Any]) -> Dict[str, int]:
        return {
            'processed': len([item for item in items if item]),
            'empty': len([item for item in items if not item]),
            'total': len(items)
        }
    
    processor = outer_function(3)
    test_data = list(range(-5, 10))
    results = processor(test_data)
    stats = static_processor(results)
    
    return {
        'results': results,
        'stats': stats,
        'complexity_score': len(results) * sum(results) if results else 0
    }


# Complex module-level operations
if __name__ == "__main__":
    # Complex initialization
    sample_data = [
        {'category': 'A', 'score': 85, 'priority': 'high', 'tags': 'urgent,important', 'active': True},
        {'category': 'B', 'score': 70, 'priority': 'normal', 'tags': 'normal', 'active': True},
        {'category': 'A', 'score': 95, 'priority': 'high', 'tags': 'critical,urgent', 'active': False},
        {'category': 'C', 'score': 60, 'priority': 'low', 'tags': '', 'active': True},
    ]
    
    # Execute complex processing
    try:
        results = complex_data_processor(sample_data)
        async_results = complex_async_simulation()
        security_demo = potential_security_issues()
        
        # Complex result processing
        final_results = {
            'data_processing': {
                k: v for k, v in results.items() 
                if k != 'data' or len(v) > 0
            },
            'async_simulation': async_results,
            'security_patterns': {
                k: v for k, v in security_demo.items() 
                if not k.startswith('api')  # Filter sensitive data for demo
            }
        }
        
        print(f"Processing completed: {len(final_results)} result categories")
        
    except Exception as e:
        print(f"Error during processing: {e}")
        raise
