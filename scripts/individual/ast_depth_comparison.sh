#!/bin/bash

# AST Research Depth Comparison Script
# Demonstrates the differences between basic, detailed, and comprehensive AST analysis

echo "🔬 AST Research Depth Comparison"
echo "================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

TARGET_FILE="/Users/dhruv/code/ecoguard-demo/sample-code/complex/ast_showcase.py"

echo -e "${BLUE}📊 Basic AST Depth Analysis${NC}"
echo "Lightweight AST analysis with essential metrics:"
ecoguard analyze $TARGET_FILE --enable-ast-research --ast-depth basic
echo ""
echo "Press Enter to continue to detailed analysis..."
read

echo -e "${YELLOW}🔍 Detailed AST Depth Analysis${NC}"
echo "Enhanced AST analysis with additional insights:"
ecoguard analyze $TARGET_FILE --enable-ast-research --ast-depth detailed
echo ""
echo "Press Enter to continue to comprehensive analysis..."
read

echo -e "${PURPLE}🚀 Comprehensive AST Depth Analysis${NC}"
echo "Full AST analysis with complete code understanding:"
ecoguard analyze $TARGET_FILE --enable-ast-research --ast-depth comprehensive
echo ""

echo -e "${GREEN}✅ AST Depth Comparison Complete!${NC}"
echo "Notice the increasing detail and insights at each level."
