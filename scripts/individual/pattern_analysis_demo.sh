#!/bin/bash

# Pattern Analysis Feature Demo
# Demonstrates the pattern analysis capabilities

echo "🎯 Pattern Analysis Feature Demo"
echo "================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${BLUE}🔍 Pattern Analysis Overview${NC}"
echo "This feature identifies code patterns, anti-patterns, and design issues."
echo ""

echo -e "${CYAN}1. Simple Code Pattern Analysis${NC}"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/simple/basic_functions.py --enable-ast-research --enable-pattern-analysis
echo ""

echo -e "${CYAN}2. Complex Pattern Detection${NC}"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/complex/complex_patterns.py --enable-ast-research --enable-pattern-analysis
echo ""

echo -e "${CYAN}3. Real-world Pattern Analysis${NC}"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/real-world/web_api_example.py --enable-ast-research --enable-pattern-analysis
echo ""

echo -e "${GREEN}✅ Pattern Analysis Demo Complete!${NC}"
echo "Patterns help identify design issues, security vulnerabilities, and optimization opportunities."
