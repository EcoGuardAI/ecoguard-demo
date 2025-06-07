# Batch Analysis Summary Report

**Generated**: Sat Jun  7 17:39:09 EDT 2025
**Total Analyses**: 24
**Output Directory**: /Users/dhruv/code/ecoguard-demo/docs/results/batch_20250607_173906

## Analysis Configurations

- **standard**: Basic standard analysis
- **ast_basic**: --enable-ast-research --ast-depth basic
- **ast_detailed**: --enable-ast-research --ast-depth detailed --enable-pattern-analysis
- **ast_comprehensive**: --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics

## Files Analyzed

- basic_functions.py
- quality_issues.py
- problematic_app.py
- ast_showcase.py
- complex_patterns.py
- web_api_example.py

## Results

Results are available in JSON format with the naming pattern:
`{filename}_{configuration}.json`

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
