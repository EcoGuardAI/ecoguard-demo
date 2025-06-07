#!/bin/bash

# EcoGuard AI - Code Quality Analysis Demo
# This script demonstrates code quality assessment capabilities

echo "✨ EcoGuard AI - Code Quality Analysis Demo"
echo "==========================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

echo -e "${PURPLE}📋 Code Quality Assessment${NC}"
echo "Analyzing code quality with AST research insights..."
echo ""

echo -e "${GREEN}1. Clean Code Analysis${NC}"
echo "Analyzing well-structured code:"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/simple/clean_code.py --enable-ast-research --ast-depth basic
echo ""

echo -e "${YELLOW}2. Quality Issues Detection${NC}"
echo "Detecting code quality problems:"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/simple/quality_issues.py --enable-ast-research --ast-depth detailed --enable-pattern-analysis
echo ""

echo -e "${BLUE}3. Comprehensive Quality Assessment${NC}"
echo "Full quality analysis with all metrics:"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/simple/ --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics
echo ""

echo -e "${PURPLE}4. Quality Report Export${NC}"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/simple/quality_issues.py --enable-ast-research --enable-pattern-analysis --enable-complexity-metrics --format json --output /Users/dhruv/code/ecoguard-demo/docs/results/quality_analysis.json
echo ""

echo -e "${GREEN}✅ Code quality analysis completed!${NC}"
echo "Quality metrics, patterns, and improvement suggestions available in results"
