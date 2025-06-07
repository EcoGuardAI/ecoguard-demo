#!/bin/bash

# EcoGuard AI - AST Research Integration Demo
# This script showcases the new AST research capabilities

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEMO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

echo "🔬 EcoGuard AI - AST Research Integration Demo"
echo "=============================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${PURPLE}🧬 Stage 3: AST Research Integration Features${NC}"
echo "This demo showcases the newly integrated AST research capabilities"
echo ""

echo -e "${BLUE}📊 1. Basic AST Research Analysis${NC}"
echo "Analyzing complex patterns with basic AST depth..."
ecoguard analyze "$DEMO_ROOT/sample-code/complex/ast_showcase.py" --enable-ast-research --ast-depth basic
echo ""

echo -e "${CYAN}🔍 2. Detailed AST Analysis with Pattern Detection${NC}"
echo "Running detailed AST analysis with pattern detection..."
ecoguard analyze "$DEMO_ROOT/sample-code/complex/complex_patterns.py" --enable-ast-research --ast-depth detailed --enable-pattern-analysis
echo ""

echo -e "${YELLOW}📈 3. Comprehensive AST with Complexity Metrics${NC}"
echo "Full comprehensive analysis with all AST research features..."
ecoguard analyze "$DEMO_ROOT/sample-code/complex/ast_showcase.py" --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics
echo ""

echo -e "${GREEN}💾 4. AST Research with JSON Export${NC}"
echo "Exporting complete AST research data to JSON..."
ecoguard analyze "$DEMO_ROOT/sample-code/complex/complex_patterns.py" --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics --format json --output "$DEMO_ROOT/docs/results/ast_research_full.json"
echo ""

echo -e "${PURPLE}🎯 5. Comparing Standard vs AST-Enhanced Analysis${NC}"
echo ""
echo "Standard Analysis:"
ecoguard analyze "$DEMO_ROOT/sample-code/complex/ast_showcase.py"
echo ""
echo "AST-Enhanced Analysis:"
ecoguard analyze "$DEMO_ROOT/sample-code/complex/ast_showcase.py" --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics
echo ""

echo -e "${GREEN}✨ AST Research Demo Completed!${NC}"
echo ""
echo "Key Features Demonstrated:"
echo "- 🔬 AST Research Integration (--enable-ast-research)"
echo "- 📊 Configurable Analysis Depth (--ast-depth basic|detailed|comprehensive)"
echo "- 🎯 Pattern Analysis (--enable-pattern-analysis)"
echo "- 📈 Complexity Metrics (--enable-complexity-metrics)"
echo "- 💾 Enhanced JSON Export with AST metadata"
echo "- 🔄 Backward Compatibility with standard analysis"
echo ""
echo "Results saved in $DEMO_ROOT/docs/results/ directory"
