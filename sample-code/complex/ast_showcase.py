"""
Python file designed to showcase EcoGuard AI's new AST research capabilities.
This file contains various Python constructs that demonstrate AST analysis features.
"""

import os
import sys
import json
import itertools
from typing import List, Dict, Optional, Union
from collections import defaultdict, Counter
from dataclasses import dataclass
from abc import ABC, abstractmethod


@dataclass
class Person:
    """Simple dataclass example"""
    name: str
    age: int
    email: Optional[str] = None
    
    def is_adult(self) -> bool:
        return self.age >= 18


class Animal(ABC):
    """Abstract base class example"""
    
    def __init__(self, name: str, species: str):
        self.name = name
        self.species = species
    
    @abstractmethod
    def make_sound(self) -> str:
        pass
    
    def describe(self) -> str:
        return f"{self.name} is a {self.species}"


class Dog(Animal):
    """Concrete implementation with complex methods"""
    
    def __init__(self, name: str, breed: str):
        super().__init__(name, "dog")
        self.breed = breed
        self.tricks = []
    
    def make_sound(self) -> str:
        return "Woof!"
    
    def learn_trick(self, trick: str) -> None:
        if trick not in self.tricks:
            self.tricks.append(trick)
    
    def perform_tricks(self) -> List[str]:
        # List comprehension example
        return [f"{self.name} performs {trick}" for trick in self.tricks]
    
    def complex_calculation(self, numbers: List[int]) -> Dict[str, Union[int, float]]:
        """Method with nested loops and complex logic"""
        result = {"sum": 0, "product": 1, "average": 0.0}
        
        # Nested loops for AST complexity analysis
        for i, num in enumerate(numbers):
            for j in range(num):
                if j % 2 == 0:
                    result["sum"] += j
                    if j > 0:
                        result["product"] *= j
                    
                    # Nested conditional logic
                    if i > len(numbers) // 2:
                        if j > num // 2:
                            result["sum"] += 1
        
        if len(numbers) > 0:
            result["average"] = result["sum"] / len(numbers)
        
        return result


def functional_programming_example(data: List[Dict[str, any]]) -> Dict[str, List]:
    """Function showcasing functional programming patterns"""
    
    # Dictionary comprehension
    categorized = {
        category: [item for item in data if item.get("category") == category]
        for category in {item.get("category") for item in data if item.get("category")}
    }
    
    # Generator expression
    processed = (
        {**item, "processed": True, "score": item.get("value", 0) * 2}
        for item in data
        if item.get("active", False)
    )
    
    # Complex nested comprehension
    matrix_operations = [
        [row[i] * 2 for i in range(len(row)) if i % 2 == 0]
        for row in [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
        if sum(row) > 10
    ]
    
    return {
        "categorized": categorized,
        "processed": list(processed),
        "matrix": matrix_operations
    }


def async_patterns_showcase():
    """Function demonstrating various Python patterns"""
    
    # Context manager usage
    try:
        with open("example.txt", "r") as file:
            content = file.read()
    except FileNotFoundError:
        content = "default content"
    
    # Exception handling with multiple except blocks
    try:
        result = 10 / 0
    except ZeroDivisionError as e:
        print(f"Division error: {e}")
        result = 0
    except Exception as e:
        print(f"Unexpected error: {e}")
        result = -1
    finally:
        print("Cleanup completed")
    
    # Complex control flow
    for i in range(10):
        if i < 3:
            continue
        elif i > 7:
            break
        else:
            print(f"Processing {i}")
    
    # While loop with complex condition
    counter = 0
    while counter < 5 and result >= 0:
        counter += 1
        if counter % 2 == 0:
            result += counter
        else:
            result -= counter
    
    return result


def decorator_examples():
    """Function showcasing decorator patterns"""
    
    def timer_decorator(func):
        """Simple decorator example"""
        def wrapper(*args, **kwargs):
            import time
            start = time.time()
            result = func(*args, **kwargs)
            end = time.time()
            print(f"{func.__name__} took {end - start:.4f} seconds")
            return result
        return wrapper
    
    @timer_decorator
    def slow_function():
        import time
        time.sleep(0.1)
        return "Done"
    
    return slow_function()


# Global variables and constants
DEFAULT_CONFIG = {
    "timeout": 30,
    "retries": 3,
    "debug": False
}

SUPPORTED_FORMATS = ["json", "xml", "csv", "yaml"]


def main():
    """Main function demonstrating usage"""
    # Object instantiation
    person = Person("Alice", 25, "alice@example.com")
    dog = Dog("Buddy", "Golden Retriever")
    
    # Method calls
    dog.learn_trick("sit")
    dog.learn_trick("fetch")
    dog.learn_trick("roll over")
    
    # Complex data processing
    sample_data = [
        {"name": "item1", "category": "A", "value": 10, "active": True},
        {"name": "item2", "category": "B", "value": 20, "active": False},
        {"name": "item3", "category": "A", "value": 15, "active": True},
    ]
    
    results = functional_programming_example(sample_data)
    calculations = dog.complex_calculation([1, 2, 3, 4, 5])
    
    # Print results
    print(f"Person: {person.name}, Adult: {person.is_adult()}")
    print(f"Dog tricks: {dog.perform_tricks()}")
    print(f"Calculations: {calculations}")
    print(f"Processing results: {len(results['processed'])} items processed")
    
    # Call other functions
    async_result = async_patterns_showcase()
    decorator_result = decorator_examples()
    
    return {
        "person": person,
        "dog": dog,
        "results": results,
        "calculations": calculations,
        "async_result": async_result,
        "decorator_result": decorator_result
    }


if __name__ == "__main__":
    main()
