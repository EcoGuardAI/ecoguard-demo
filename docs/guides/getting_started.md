# 🚀 Getting Started with EcoGuard AI Demo

This guide will help you get the most out of the EcoGuard AI demonstration repository, especially the new Stage 3 AST Research Integration features.

## 🎯 Prerequisites

Before running the demos, ensure you have:

1. **EcoGuard AI CLI installed** and accessible in your PATH
2. **Python 3.8+** for running sample code
3. **Bash shell** for executing demo scripts
4. **Basic understanding** of code analysis concepts

## �� Quick Verification

Test that EcoGuard AI is properly installed:

```bash
ecoguard --version
ecoguard --help
```

## 🎬 Your First Demo

### 1. Start with Basic Analysis

Run a simple analysis to verify everything works:

```bash
# From the demo repository root
ecoguard analyze sample-code/simple/basic_functions.py
```

### 2. Try AST Research Features

Experience the new AST research capabilities:

```bash
ecoguard analyze sample-code/simple/basic_functions.py --enable-ast-research --ast-depth basic
```

### 3. Run a Complete Demo

Execute the comprehensive demo to see all features:

```bash
./demos/comprehensive/full_demo.sh
```

## 🎪 Demo Progression

We recommend following this progression to understand all capabilities:

### Beginner Level
1. **Basic Analysis**: `./demos/basic/basic_analysis_demo.sh`
2. **Quality Assessment**: `./demos/quality/quality_demo.sh`

### Intermediate Level
3. **AST Research**: `./demos/ast-research/ast_research_demo.sh`
4. **Security Analysis**: `./demos/security/security_demo.sh`
5. **Performance Analysis**: `./demos/performance/performance_demo.sh`

### Advanced Level
6. **Comprehensive Demo**: `./demos/comprehensive/full_demo.sh`
7. **Batch Analysis**: `./scripts/automation/batch_analysis.sh`

## 🔧 Command Line Options Guide

### Standard Options (Backward Compatible)

```bash
# Basic analysis
ecoguard analyze <file>

# JSON export
ecoguard analyze <file> --format json --output results.json

# Help
ecoguard analyze --help
```

### New AST Research Options

```bash
# Enable AST research
--enable-ast-research

# Set analysis depth
--ast-depth basic          # Quick insights
--ast-depth detailed       # Enhanced analysis
--ast-depth comprehensive  # Complete analysis

# Enable pattern detection
--enable-pattern-analysis

# Enable complexity metrics
--enable-complexity-metrics
```

### Common Combinations

```bash
# Light AST analysis
ecoguard analyze file.py --enable-ast-research --ast-depth basic

# Standard AST research
ecoguard analyze file.py --enable-ast-research --ast-depth detailed --enable-pattern-analysis

# Full analysis
ecoguard analyze file.py --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics

# Full analysis with JSON export
ecoguard analyze file.py --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics --format json --output results.json
```

## 📊 Understanding Output

### Standard Analysis Output
- Issue list with severity levels
- Summary statistics
- Recommendations

### AST Research Enhanced Output
- **Beautiful tables** with metrics
- **Pattern analysis** results
- **Complexity measurements**
- **Structural insights**

### JSON Export Structure
```json
{
  "analysis_results": {
    "issues": [...],
    "summary": {...}
  },
  "ast_research": {
    "enabled": true,
    "depth_level": "comprehensive",
    "structural_metrics": {...},
    "pattern_analysis": {...},
    "complexity_metrics": {...}
  }
}
```

## 🗂️ Sample Code Guide

### Simple Examples (Great for Learning)
- `basic_functions.py` - Clean, simple functions
- `clean_code.py` - Best practices example
- `quality_issues.py` - Common problems to detect

### Complex Examples (Showcase Features)
- `ast_showcase.py` - Advanced patterns
- `complex_patterns.py` - Intricate structures

### Real-World Examples (Practical Applications)
- `web_api_example.py` - Realistic web application

## 🎨 Customizing Demos

### Modifying Demo Scripts

All demo scripts are in `demos/` and `scripts/` directories. You can:

1. **Edit target files**: Change which files are analyzed
2. **Modify options**: Adjust AST research settings
3. **Add custom analysis**: Include your own code samples

### Creating Custom Analysis

```bash
# Analyze your own files
ecoguard analyze /path/to/your/code.py --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics

# Batch analyze a directory
for file in /path/to/your/project/*.py; do
    ecoguard analyze "$file" --enable-ast-research --format json --output "results/$(basename "$file").json"
done
```

## 🔍 Troubleshooting

### Common Issues

1. **Command not found**: Ensure EcoGuard AI is in your PATH
2. **Permission denied**: Make demo scripts executable with `chmod +x`
3. **File not found**: Run commands from the demo repository root
4. **Analysis errors**: Check that target files have valid Python syntax

### Getting Help

```bash
# CLI help
ecoguard --help
ecoguard analyze --help

# Version information
ecoguard --version

# Verbose output for debugging
ecoguard analyze file.py --verbose
```

## 📈 Performance Tips

### For Large Projects
- Start with `--ast-depth basic` for quick insights
- Use `--ast-depth comprehensive` for detailed analysis
- Consider batch processing for multiple files

### For CI/CD Integration
- Use `--format json` for automated processing
- Focus on specific analysis types (security, quality, etc.)
- Set appropriate timeout values for large codebases

## 🎓 Learning Path

1. **Week 1**: Run basic demos, understand standard analysis
2. **Week 2**: Explore AST research features, try different depth levels
3. **Week 3**: Use pattern analysis and complexity metrics
4. **Week 4**: Create custom analysis workflows, batch processing

## 🔗 Next Steps

After completing the demos:

1. **Integrate** EcoGuard AI into your development workflow
2. **Customize** analysis settings for your project needs
3. **Automate** analysis in CI/CD pipelines
4. **Share** insights with your development team

## 💡 Pro Tips

- Always start with basic analysis to understand the baseline
- Use comprehensive analysis for architecture reviews
- Pattern analysis is excellent for identifying refactoring opportunities
- Complexity metrics help prioritize technical debt reduction
- JSON export enables integration with other tools and dashboards

---

Happy analyzing! 🌱 EcoGuard AI makes code analysis intelligent and actionable.
