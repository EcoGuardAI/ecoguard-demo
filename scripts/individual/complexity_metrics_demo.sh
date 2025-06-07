#!/bin/bash

# Complexity Metrics Feature Demo
# Demonstrates the complexity analysis capabilities

echo "📈 Complexity Metrics Feature Demo"
echo "==================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}📊 Complexity Metrics Overview${NC}"
echo "This feature measures code complexity using various metrics."
echo ""

echo -e "${GREEN}1. Simple Code Complexity${NC}"
echo "Low complexity, well-structured code:"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/simple/basic_functions.py --enable-ast-research --enable-complexity-metrics
echo ""

echo -e "${YELLOW}2. Moderate Complexity Analysis${NC}"
echo "Code with some complexity issues:"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/simple/quality_issues.py --enable-ast-research --enable-complexity-metrics
echo ""

echo -e "${RED}3. High Complexity Detection${NC}"
echo "Complex code with performance and maintainability issues:"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/real-world/web_api_example.py --enable-ast-research --enable-complexity-metrics
echo ""

echo -e "${BLUE}4. Combined Analysis${NC}"
echo "Complexity metrics with pattern analysis:"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/complex/ast_showcase.py --enable-ast-research --enable-complexity-metrics --enable-pattern-analysis
echo ""

echo -e "${GREEN}✅ Complexity Metrics Demo Complete!${NC}"
echo "Complexity metrics help identify maintainability and performance issues."
