"""
Simple Python file with basic code quality issues
to demonstrate current EcoGuard AI capabilities.
"""

import os
import sys
import json
import unused_module  # This import is never used


def function_with_too_many_params(a, b, c, d, e, f, g, h, i, j):
    """Function with too many parameters (>6)"""
    return a + b + c + d + e + f + g + h + i + j


def complex_function(x):
    """Function with high cyclomatic complexity"""
    if x > 0:
        if x > 10:
            if x > 20:
                if x > 30:
                    if x > 40:
                        if x > 50:
                            return "very high"
                        else:
                            return "high"
                    else:
                        return "medium-high"
                else:
                    return "medium"
            else:
                return "low-medium"
        else:
            return "low"
    else:
        return "negative"


def function_with_unused_vars():
    """Function with unused variables"""
    used_var = "I am used"
    unused_var = "I am never used"
    another_unused = [1, 2, 3]
    _ignored_var = "I start with underscore so I'm ignored"
    
    print(used_var)
    return used_var


# Unused top-level variable
UNUSED_CONSTANT = "Never used"

# Used variable
USED_CONSTANT = "I am used"


def main():
    """Main function that uses some variables"""
    print(USED_CONSTANT)
    function_with_unused_vars()


if __name__ == "__main__":
    main()
