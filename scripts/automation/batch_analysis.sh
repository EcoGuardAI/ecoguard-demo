#!/bin/bash

# Batch Analysis Automation Script
# Runs multiple analysis scenarios and generates comprehensive reports

echo "🤖 EcoGuard AI - Batch Analysis Automation"
echo "==========================================="
echo ""

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Create output directory
mkdir -p /Users/dhruv/code/ecoguard-demo/docs/results/batch_$(date +%Y%m%d_%H%M%S)
OUTPUT_DIR="/Users/dhruv/code/ecoguard-demo/docs/results/batch_$(date +%Y%m%d_%H%M%S)"

echo -e "${PURPLE}📊 Starting Batch Analysis Process${NC}"
echo "Output directory: $OUTPUT_DIR"
echo ""

# Analysis configurations
CONFIGS=(
    "standard:Basic standard analysis"
    "ast_basic:--enable-ast-research --ast-depth basic"
    "ast_detailed:--enable-ast-research --ast-depth detailed --enable-pattern-analysis"
    "ast_comprehensive:--enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics"
)

# Files to analyze
FILES=(
    "/Users/dhruv/code/ecoguard-demo/sample-code/simple/basic_functions.py"
    "/Users/dhruv/code/ecoguard-demo/sample-code/simple/quality_issues.py"
    "/Users/dhruv/code/ecoguard-demo/sample-code/simple/problematic_app.py"
    "/Users/dhruv/code/ecoguard-demo/sample-code/complex/ast_showcase.py"
    "/Users/dhruv/code/ecoguard-demo/sample-code/complex/complex_patterns.py"
    "/Users/dhruv/code/ecoguard-demo/sample-code/real-world/web_api_example.py"
)

echo -e "${BLUE}🔄 Running batch analysis...${NC}"
echo ""

total_analyses=$((${#CONFIGS[@]} * ${#FILES[@]}))
current=0

for config_line in "${CONFIGS[@]}"; do
    config_name="${config_line%%:*}"
    config_args="${config_line#*:}"
    
    echo -e "${CYAN}Configuration: $config_name${NC}"
    
    for file in "${FILES[@]}"; do
        current=$((current + 1))
        filename=$(basename "$file" .py)
        
        echo -e "${YELLOW}[$current/$total_analyses] Analyzing $filename with $config_name...${NC}"
        
        if [ "$config_args" = "Basic standard analysis" ]; then
            ecoguard analyze "$file" --format json --output "$OUTPUT_DIR/${filename}_${config_name}.json" > /dev/null 2>&1
        else
            ecoguard analyze "$file" $config_args --format json --output "$OUTPUT_DIR/${filename}_${config_name}.json" > /dev/null 2>&1
        fi
        
        if [ $? -eq 0 ]; then
            echo -e "  ${GREEN}✅ Success${NC}"
        else
            echo -e "  ${RED}❌ Failed${NC}"
        fi
    done
    echo ""
done

echo -e "${PURPLE}📈 Generating Summary Report${NC}"

# Generate summary report
cat > "$OUTPUT_DIR/batch_analysis_summary.md" << EOF
# Batch Analysis Summary Report

**Generated**: $(date)
**Total Analyses**: $total_analyses
**Output Directory**: $OUTPUT_DIR

## Analysis Configurations

$(for config_line in "${CONFIGS[@]}"; do
    config_name="${config_line%%:*}"
    config_desc="${config_line#*:}"
    echo "- **$config_name**: $config_desc"
done)

## Files Analyzed

$(for file in "${FILES[@]}"; do
    echo "- $(basename "$file")"
done)

## Results

Results are available in JSON format with the naming pattern:
\`{filename}_{configuration}.json\`

### Key Insights

- **Standard Analysis**: Traditional code analysis without AST research
- **AST Basic**: Lightweight AST analysis with essential metrics
- **AST Detailed**: Enhanced analysis with pattern detection
- **AST Comprehensive**: Complete analysis with all features enabled

## Usage

To compare results between configurations:
1. Load JSON files into your preferred analysis tool
2. Compare metrics across different AST depth levels
3. Observe pattern detection improvements
4. Analyze complexity metric variations

## Next Steps

- Review individual analysis results
- Compare AST-enhanced vs standard analysis
- Identify patterns across different code samples
- Use insights for code improvement strategies
