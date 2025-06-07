#!/usr/bin/env python3
"""
Simple Python file with basic functions for demonstrating EcoGuard AI analysis.
This file contains clean, well-structured code with minimal complexity.
"""

def greet(name: str) -> str:
    """Simple greeting function."""
    if not name:
        return "Hello, World!"
    return f"Hello, {name}!"

def calculate_sum(numbers: list[int]) -> int:
    """Calculate sum of a list of numbers."""
    return sum(numbers)

def is_even(number: int) -> bool:
    """Check if a number is even."""
    return number % 2 == 0

def process_data(data: list[str]) -> list[str]:
    """Process a list of strings by converting to uppercase."""
    return [item.upper() for item in data if item]

if __name__ == "__main__":
    # Simple usage examples
    print(greet("Alice"))
    print(calculate_sum([1, 2, 3, 4, 5]))
    print(is_even(42))
    print(process_data(["hello", "world", "", "python"]))
