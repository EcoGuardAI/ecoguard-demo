#!/bin/bash

# EcoGuard AI - Development Workflow Integration Script
# Usage: ./ecoguard_check.sh [project_path]

PROJECT_PATH=${1:-"."}
REPORT_DIR="ecoguard-reports"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

echo "🌱 EcoGuard AI Code Analysis"
echo "============================="
echo "Project: $PROJECT_PATH"
echo "Time: $(date)"
echo ""

# Create reports directory
mkdir -p "$REPORT_DIR"

# 1. Quick development check (only warnings and errors)
echo "📊 Quick Development Check (warnings and errors only):"
ecoguard analyze "$PROJECT_PATH" --format table --severity warning

echo ""
echo "📈 Detailed Analysis:"

# 2. Full analysis with all issues
ecoguard analyze "$PROJECT_PATH" \
  --format json \
  --output "$REPORT_DIR/full-analysis-$TIMESTAMP.json" \
  --severity info

# 3. Text report for review
ecoguard analyze "$PROJECT_PATH" \
  --format text \
  --output "$REPORT_DIR/review-report-$TIMESTAMP.txt" \
  --severity warning

# 4. Security-focused analysis (when security rules are available)
echo "🔒 Security Analysis:"
ecoguard analyze "$PROJECT_PATH" \
  --format table \
  --severity info \
  --no-quality \
  --no-green \
  --no-ai-code || echo "Security analysis will be available in future releases"

# 5. Performance/Green analysis
echo "🌿 Green Software Analysis:" 
ecoguard analyze "$PROJECT_PATH" \
  --format table \
  --severity info \
  --no-quality \
  --no-security \
  --no-ai-code || echo "Green analysis will be enhanced in future releases"

echo ""
echo "📋 Reports saved to: $REPORT_DIR/"
echo "   - full-analysis-$TIMESTAMP.json (machine-readable)"
echo "   - review-report-$TIMESTAMP.txt (human-readable)"

echo ""
echo "✅ Analysis complete!"

# Optional: Set exit code based on severity of issues found
# Check if critical or error issues were found
if grep -q '"severity": "error"' "$REPORT_DIR/full-analysis-$TIMESTAMP.json" 2>/dev/null; then
    echo "❌ Critical issues found - please review before committing"
    exit 1
elif grep -q '"severity": "warning"' "$REPORT_DIR/full-analysis-$TIMESTAMP.json" 2>/dev/null; then
    echo "⚠️  Warnings found - consider reviewing"
    exit 0
else
    echo "✨ No critical issues found"
    exit 0
fi
