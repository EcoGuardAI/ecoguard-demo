#!/bin/bash

# EcoGuard AI - Performance Analysis Demo
# This script demonstrates performance optimization detection

echo "⚡ EcoGuard AI - Performance Analysis Demo"
echo "=========================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${CYAN}📊 Performance Optimization Analysis${NC}"
echo "Using AST research to identify performance bottlenecks..."
echo ""

echo -e "${BLUE}1. Complexity Metrics Analysis${NC}"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/complex/ast_showcase.py --enable-ast-research --ast-depth comprehensive --enable-complexity-metrics
echo ""

echo -e "${YELLOW}2. Pattern Analysis for Performance Issues${NC}"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/complex/complex_patterns.py --enable-ast-research --ast-depth detailed --enable-pattern-analysis --enable-complexity-metrics
echo ""

echo -e "${GREEN}3. Comprehensive Performance Report${NC}"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/complex/ --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics --format json --output /Users/dhruv/code/ecoguard-demo/docs/results/performance_analysis.json
echo ""

echo -e "${GREEN}✅ Performance analysis completed!${NC}"
echo "Results show complexity metrics, performance patterns, and optimization opportunities"
