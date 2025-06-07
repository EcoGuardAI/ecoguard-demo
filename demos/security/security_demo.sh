#!/bin/bash

# EcoGuard AI - Security-Focused Analysis Demo
# This script demonstrates security vulnerability detection

echo "🔒 EcoGuard AI - Security Analysis Demo"
echo "======================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${RED}🚨 Security Vulnerability Detection${NC}"
echo "Analyzing code for security issues with AST research..."
echo ""

echo -e "${BLUE}1. SQL Injection & Input Validation Issues${NC}"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/real-world/web_api_example.py --enable-ast-research --ast-depth detailed --enable-pattern-analysis
echo ""

echo -e "${YELLOW}2. Complex Security Patterns Analysis${NC}"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/complex/complex_patterns.py --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics
echo ""

echo -e "${RED}3. Security-Focused JSON Report${NC}"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/real-world/web_api_example.py --enable-ast-research --enable-pattern-analysis --format json --output /Users/dhruv/code/ecoguard-demo/docs/results/security_analysis.json
echo ""

echo -e "${GREEN}✅ Security analysis completed!${NC}"
echo "Check /Users/dhruv/code/ecoguard-demo/docs/results/security_analysis.json for detailed security findings"
