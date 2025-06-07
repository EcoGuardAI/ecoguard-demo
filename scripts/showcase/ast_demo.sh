#!/bin/bash

# EcoGuard AI - AST Research Integration Demo Script
# Usage: ./ast_demo.sh [project_path]
# This script demonstrates the new AST research capabilities integrated into EcoGuard AI

PROJECT_PATH=${1:-"."}
REPORT_DIR="ecoguard-reports"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

echo "🌱 EcoGuard AI - AST Research Integration Demo"
echo "=============================================="
echo "Project: $PROJECT_PATH"
echo "Time: $(date)"
echo ""

# Create reports directory
mkdir -p "$REPORT_DIR"

echo "🎯 NEW FEATURE: AST Research Integration"
echo "========================================"
echo ""

# 1. Basic AST Research Analysis
echo "📊 1. Basic AST Research Analysis:"
echo "   Command: ecoguard analyze ast_showcase.py --enable-ast-research"
echo ""
ecoguard analyze ast_showcase.py --enable-ast-research --format table

echo ""
echo "----------------------------------------"
echo ""

# 2. Detailed AST Research with Pattern Analysis
echo "📈 2. Detailed AST Research with Pattern Analysis:"
echo "   Command: ecoguard analyze ast_showcase.py --enable-ast-research --ast-depth detailed --enable-pattern-analysis"
echo ""
ecoguard analyze ast_showcase.py \
    --enable-ast-research \
    --ast-depth detailed \
    --enable-pattern-analysis \
    --format table

echo ""
echo "----------------------------------------"
echo ""

# 3. Comprehensive AST Research with Complexity Metrics
echo "🔬 3. Comprehensive AST Research with All Features:"
echo "   Command: ecoguard analyze complex_patterns.py --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics"
echo ""
ecoguard analyze complex_patterns.py \
    --enable-ast-research \
    --ast-depth comprehensive \
    --enable-pattern-analysis \
    --enable-complexity-metrics \
    --format table

echo ""
echo "----------------------------------------"
echo ""

# 4. AST Research on Multiple Files
echo "📂 4. AST Research on Multiple Files:"
echo "   Command: ecoguard analyze . --enable-ast-research --enable-pattern-analysis --format table"
echo ""
ecoguard analyze . \
    --enable-ast-research \
    --enable-pattern-analysis \
    --format table \
    --severity info

echo ""
echo "----------------------------------------"
echo ""

# 5. JSON Export with AST Research Data
echo "💾 5. JSON Export with Complete AST Research Data:"
echo "   Command: ecoguard analyze ast_showcase.py --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics --format json"
echo ""
ecoguard analyze ast_showcase.py \
    --enable-ast-research \
    --ast-depth comprehensive \
    --enable-pattern-analysis \
    --enable-complexity-metrics \
    --format json \
    --output "$REPORT_DIR/ast-research-demo-$TIMESTAMP.json"

echo ""
echo "📋 JSON Report with AST Research Data saved to: $REPORT_DIR/ast-research-demo-$TIMESTAMP.json"
echo ""

# 6. Complexity-Only Analysis
echo "⚡ 6. Complexity Metrics Only:"
echo "   Command: ecoguard analyze complex_patterns.py --enable-ast-research --enable-complexity-metrics"
echo ""
ecoguard analyze complex_patterns.py \
    --enable-ast-research \
    --enable-complexity-metrics \
    --format table

echo ""
echo "----------------------------------------"
echo ""

# 7. Comparison: Traditional vs AST-Enhanced Analysis
echo "🔄 7. Comparison: Traditional vs AST-Enhanced Analysis"
echo ""
echo "📊 Traditional Analysis (quality_issues.py):"
ecoguard analyze quality_issues.py --format table --severity info

echo ""
echo "🔬 AST-Enhanced Analysis (quality_issues.py):"
ecoguard analyze quality_issues.py \
    --enable-ast-research \
    --enable-pattern-analysis \
    --enable-complexity-metrics \
    --format table \
    --severity info

echo ""
echo "=========================================="
echo "✨ AST Research Integration Demo Complete!"
echo "=========================================="
echo ""
echo "📋 Key Features Demonstrated:"
echo "   ✅ Basic AST research with --enable-ast-research"
echo "   ✅ Detailed analysis with --ast-depth detailed"
echo "   ✅ Comprehensive analysis with --ast-depth comprehensive"
echo "   ✅ Pattern analysis with --enable-pattern-analysis"
echo "   ✅ Complexity metrics with --enable-complexity-metrics"
echo "   ✅ JSON export with complete AST metadata"
echo "   ✅ Multi-file AST analysis"
echo ""
echo "📖 New CLI Options Available:"
echo "   --enable-ast-research       Enable AST research analysis"
echo "   --ast-depth [basic|detailed|comprehensive]  Set AST analysis depth"
echo "   --enable-pattern-analysis   Enable AST pattern recognition"
echo "   --enable-complexity-metrics Enable complexity calculations"
echo ""
echo "💡 Try these commands yourself:"
echo "   ecoguard analyze your-file.py --enable-ast-research --enable-pattern-analysis"
echo "   ecoguard analyze your-project/ --enable-ast-research --ast-depth detailed"
echo "   ecoguard analyze . --enable-ast-research --enable-complexity-metrics --format json"
echo ""
echo "📊 Reports saved to: $REPORT_DIR/"
echo "   - ast-research-demo-$TIMESTAMP.json (complete AST metadata)"
echo ""
echo "🎯 Next Steps:"
echo "   1. Explore the JSON output to see detailed AST data"
echo "   2. Try AST analysis on your own Python projects"
echo "   3. Use complexity metrics to identify refactoring opportunities"
echo "   4. Integrate AST research into your CI/CD pipeline"
echo ""
