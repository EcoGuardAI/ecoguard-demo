#!/bin/bash

# EcoGuard AI - Basic Analysis Demo
# This script demonstrates basic code analysis capabilities

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEMO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

echo "🌱 EcoGuard AI - Basic Analysis Demo"
echo "===================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}📁 Analyzing simple clean code...${NC}"
ecoguard analyze "$DEMO_ROOT/sample-code/simple/clean_code.py" --format json --output "$DEMO_ROOT/docs/results/basic_clean_analysis.json"
echo ""

echo -e "${YELLOW}⚠️  Analyzing code with quality issues...${NC}"
ecoguard analyze "$DEMO_ROOT/sample-code/simple/quality_issues.py" --format json --output "$DEMO_ROOT/docs/results/basic_quality_analysis.json"
echo ""

echo -e "${RED}🚨 Analyzing problematic application code...${NC}"
ecoguard analyze "$DEMO_ROOT/sample-code/simple/problematic_app.py" --format json --output "$DEMO_ROOT/docs/results/basic_problematic_analysis.json"
echo ""

echo -e "${GREEN}✅ Basic analysis demo completed!${NC}"
echo "Results saved in docs/results/ directory"
echo ""
echo "Next steps:"
echo "- Check out AST research demo: $DEMO_ROOT/demos/ast-research/ast_research_demo.sh"
echo "- Try security-focused analysis: $DEMO_ROOT/demos/security/security_demo.sh"
echo "- Run comprehensive analysis: $DEMO_ROOT/demos/comprehensive/full_demo.sh"
