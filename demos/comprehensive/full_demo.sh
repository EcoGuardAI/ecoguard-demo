#!/bin/bash

# EcoGuard AI - Comprehensive Demo
# This script showcases all EcoGuard AI capabilities including Stage 3 AST Research Integration

echo "🌟 EcoGuard AI - Comprehensive Feature Showcase"
echo "==============================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${PURPLE}🚀 EcoGuard AI Production CLI with Stage 3 AST Research Integration${NC}"
echo "This comprehensive demo showcases all features and capabilities"
echo ""

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BLUE}📊 PHASE 1: Basic Analysis Capabilities${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

echo -e "${GREEN}1.1 Standard Code Analysis${NC}"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/simple/clean_code.py
echo ""

echo -e "${YELLOW}1.2 Quality Issues Detection${NC}"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/simple/quality_issues.py
echo ""

echo -e "${RED}1.3 Security Vulnerability Analysis${NC}"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/simple/problematic_app.py
echo ""

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${PURPLE}🔬 PHASE 2: AST Research Integration (Stage 3)${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

echo -e "${BLUE}2.1 Basic AST Research${NC}"
echo "Enabling AST research with basic depth:"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/complex/ast_showcase.py --enable-ast-research --ast-depth basic
echo ""

echo -e "${CYAN}2.2 Detailed AST Analysis${NC}"
echo "Detailed AST analysis with pattern detection:"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/complex/complex_patterns.py --enable-ast-research --ast-depth detailed --enable-pattern-analysis
echo ""

echo -e "${PURPLE}2.3 Comprehensive AST Research${NC}"
echo "Full AST research with all features:"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/complex/ast_showcase.py --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics
echo ""

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${YELLOW}📋 PHASE 3: Export & Reporting${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

echo -e "${GREEN}3.1 Standard JSON Export${NC}"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/simple/clean_code.py --format json --output /Users/dhruv/code/ecoguard-demo/docs/results/comprehensive_standard.json
echo ""

echo -e "${PURPLE}3.2 AST-Enhanced JSON Export${NC}"
echo "Exporting complete AST research data:"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/complex/complex_patterns.py --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics --format json --output /Users/dhruv/code/ecoguard-demo/docs/results/comprehensive_ast_enhanced.json
echo ""

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${BLUE}🔄 PHASE 4: Backward Compatibility Verification${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"

echo -e "${GREEN}4.1 Legacy Command Compatibility${NC}"
echo "Verifying existing commands still work:"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/simple/problematic_app.py --format json
echo ""

echo -e "${YELLOW}4.2 Mixed Usage Patterns${NC}"
echo "Combining old and new flags:"
ecoguard analyze /Users/dhruv/code/ecoguard-demo/sample-code/complex/ast_showcase.py --enable-ast-research --format json --output /Users/dhruv/code/ecoguard-demo/docs/results/mixed_usage.json
echo ""

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}✅ COMPREHENSIVE DEMO COMPLETED!${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

echo -e "${PURPLE}🎯 Features Demonstrated:${NC}"
echo "✨ Standard code analysis (backward compatible)"
echo "🔬 AST Research Integration (--enable-ast-research)"
echo "📊 Configurable analysis depth (--ast-depth)"
echo "🎯 Pattern analysis (--enable-pattern-analysis)"
echo "📈 Complexity metrics (--enable-complexity-metrics)"
echo "💾 Enhanced JSON export with AST metadata"
echo "🔄 Full backward compatibility"
echo "🎨 Beautiful table displays"
echo "🚀 Production-ready CLI"
echo ""

echo -e "${BLUE}📁 Results Location:${NC}"
echo "All analysis results saved in: /Users/dhruv/code/ecoguard-demo/docs/results/"
echo ""

echo -e "${GREEN}🎉 EcoGuard AI Stage 3 AST Research Integration is now live!${NC}"
