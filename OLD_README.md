# 🌱 EcoGuard AI - Quick Reference & Examples

## Quick Start Commands

```bash
# Install EcoGuard AI (from your local development)
cd /Users/dhruv/code/ecoguard && pip install -e .

# Basic usage - analyze current directory
ecoguard analyze . --format table

# Analyze specific file with detailed output
ecoguard analyze my_file.py --format text --severity info

# Save results to file
ecoguard analyze . --output results.json --format json
```

## 🔬 NEW: AST Research Integration Commands

```bash
# Enable AST research analysis
ecoguard analyze my_file.py --enable-ast-research

# Detailed AST analysis with pattern recognition
ecoguard analyze my_file.py --enable-ast-research --ast-depth detailed --enable-pattern-analysis

# Comprehensive AST analysis with all features
ecoguard analyze my_file.py --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics

# AST analysis on entire project with JSON export
ecoguard analyze . --enable-ast-research --enable-pattern-analysis --format json --output ast-analysis.json

# Quick complexity check
ecoguard analyze my_file.py --enable-ast-research --enable-complexity-metrics
```

## Real Examples from Demo

### 🔬 NEW: AST Research Analysis Examples

#### 1. Basic AST Research on Sample File
```bash
$ ecoguard analyze ast_showcase.py --enable-ast-research --format table

AST Research Analysis Results
============================

AST Metrics for: ast_showcase.py
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━┓
┃ Metric                     ┃ Value     ┃
┡━━━━━━━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━┩
│ Maximum AST Depth          │ 12        │
│ Cyclomatic Complexity      │ 8         │
│ Maximum Nesting Level      │ 5         │
│ Total Nodes                │ 2,847     │
│ Function Definitions       │ 15        │
│ Class Definitions          │ 4         │
│ Import Statements          │ 12        │
└────────────────────────────┴───────────┘
```

#### 2. Comprehensive AST Analysis with Pattern Recognition
```bash
$ ecoguard analyze complex_patterns.py --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics

AST Pattern Analysis Results
============================

Detected Patterns for: complex_patterns.py
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃ Pattern Type                                                    ┃
┡━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┩
│ Functions (18):                                                 │
│   • advanced_decorator_factory, complex_data_processor         │
│   • potential_security_issues, complex_async_simulation        │
│                                                                 │
│ Classes (4):                                                    │
│   • ComplexGenericClass, MetaclassExample                     │
│   • AutoDecoratedClass, DatabaseConnection                     │
│                                                                 │
│ Imports (8):                                                    │
│   • ast, re, hashlib, sqlite3, subprocess                     │
│   • pathlib.Path, functools.wraps, concurrent.futures         │
│                                                                 │
│ Complex Patterns:                                               │
│   • List Comprehensions: 15                                    │
│   • Dictionary Comprehensions: 8                               │
│   • Generator Expressions: 4                                   │
│   • Nested Functions: 6                                        │
│   • Decorators: 12                                             │
└─────────────────────────────────────────────────────────────────┘

Complexity Metrics
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━┓
┃ Metric                     ┃ Value     ┃
┡━━━━━━━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━┩
│ Highest Function Complexity│ 24        │
│ Average Function Complexity│ 8.5       │
│ Deeply Nested Functions    │ 3         │
│ Long Parameter Lists       │ 2         │
└────────────────────────────┴───────────┘
```

#### 3. JSON Export with Complete AST Metadata
```bash
$ ecoguard analyze ast_showcase.py --enable-ast-research --ast-depth detailed --enable-pattern-analysis --format json | jq '.metadata.ast_research'

{
  "ast_metrics": {
    "max_depth": 12,
    "cyclomatic_complexity": 8,
    "max_nesting_level": 5,
    "total_nodes": 2847,
    "function_count": 15,
    "class_count": 4,
    "import_count": 12
  },
  "pattern_analysis": {
    "functions": [
      {"name": "is_adult", "line": 18, "complexity": 2},
      {"name": "make_sound", "line": 32, "complexity": 1},
      {"name": "complex_calculation", "line": 52, "complexity": 12}
    ],
    "classes": [
      {"name": "Person", "line": 12, "methods": 1},
      {"name": "Animal", "line": 22, "methods": 2, "type": "abstract"},
      {"name": "Dog", "line": 36, "methods": 4}
    ],
    "comprehensions": 8,
    "generators": 2,
    "decorators": 3
  }
}
```

### 🎯 Traditional Analysis Examples

#### 1. Analyzing a Single File with Issues
```bash
$ ecoguard analyze quality_issues.py --format text --severity info

Analysis Results for: quality_issues.py
============================================================
Found 7 issues:

quality_issues.py:43:4: warning: Variable 'unused_var' is defined but never used 
quality_issues.py:44:4: warning: Variable 'another_unused' is defined but never used 
quality_issues.py:6:0: info: Import 'os' is not used 
quality_issues.py:7:0: info: Import 'sys' is not used 
quality_issues.py:8:0: info: Import 'json' is not used 
quality_issues.py:9:0: info: Import 'unused_module' is not used 
quality_issues.py:12:0: info: Function 'function_with_too_many_params' has 10 parameters (max: 5)
```

### 2. Analyzing Entire Project
```bash
$ ecoguard analyze . --format table --severity warning

Project Analysis Results: .
           Project Summary            
┏━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━┓
┃ Metric                 ┃ Value     ┃
┡━━━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━┩
│ Files Analyzed         │ 5         │
│ Total Issues           │ 67        │
│ Info                   │ 45        │
│ Warning                │ 22        │
│ Overall Green Score    │ 68.3/100  │
│ Overall Security Score │ 100.0/100 │
└────────────────────────┴───────────┘
```

### 3. Project Analysis with AST Research Integration
```bash
$ ecoguard analyze . --enable-ast-research --enable-pattern-analysis --format table

Project Analysis Results with AST Research: .
           Project Summary            
┏━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━┓
┃ Metric                 ┃ Value     ┃
┡━━━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━┩
│ Files Analyzed         │ 5         │
│ Total Issues           │ 67        │
│ Info                   │ 45        │
│ Warning                │ 22        │
│ Overall Green Score    │ 68.3/100  │
│ Overall Security Score │ 100.0/100 │
│ AST Patterns Detected  │ 124       │
│ Complex Functions      │ 8         │
│ Total Code Complexity  │ 187       │
└────────────────────────┴───────────┘

AST Research Summary
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┳━━━━━━━━━━━┓
┃ Pattern Type                       ┃ Count     ┃
┡━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╇━━━━━━━━━━━┩
│ Functions                          │ 45        │
│ Classes                           │ 12        │
│ List Comprehensions               │ 18        │
│ Dictionary Comprehensions         │ 12        │
│ Generator Expressions             │ 6         │
│ Decorators                        │ 15        │
│ Complex Nested Structures         │ 16        │
└────────────────────────────────────┴───────────┘
```

### 4. JSON Output for Automation
```bash
$ ecoguard analyze quality_issues.py --format json | jq '.summary'

{
  "total_issues": 7,
  "critical": 0,
  "error": 0,
  "warning": 2,
  "info": 5,
  "green_score": 100.0,
  "security_score": 100.0
}
```

## Currently Available Features

### ✅ Working Now (Phase 1 Stage 3) - **NEW AST Research Integration**
- **Quality Analysis**: Detects unused imports, unused variables, functions with too many parameters
- **Code Complexity**: Identifies overly complex functions
- **Clean Code Issues**: Finds maintainability problems
- **Multi-file Analysis**: Can analyze entire projects
- **Multiple Output Formats**: JSON, text, table
- **Severity Filtering**: Filter by info, warning, error, critical
- **Detailed Reports**: Line numbers, suggestions, impact analysis

#### 🔬 **NEW: Advanced AST Research Capabilities**
- **AST Metrics Analysis**: Maximum depth, cyclomatic complexity, nesting levels, node counts
- **Pattern Recognition**: Automatic detection of functions, classes, imports, loops, comprehensions
- **Complexity Calculations**: Advanced complexity metrics for code maintainability
- **Comprehensive Code Structure Analysis**: Deep insights into code organization
- **Configurable Analysis Depth**: Basic, detailed, or comprehensive AST analysis
- **Rich Visual Reports**: Beautiful table displays for AST metrics and patterns

### 🚧 Coming Soon (Future Stages)
- **Security Analysis**: SQL injection, hardcoded secrets, unsafe functions
- **Green Software**: Energy consumption, carbon footprint analysis
- **AI Code Analysis**: Specialized analysis for AI-generated code
- **Custom Rules**: User-defined analysis rules
- **Auto-fixing**: Automatic code fixes for common issues

## Common Use Cases

### For Individual Developers
```bash
# Before committing code
ecoguard analyze . --format table --severity warning

# Detailed code review with AST research
ecoguard analyze src/ --enable-ast-research --enable-pattern-analysis --format text --output code-review.txt

# Complexity analysis for refactoring
ecoguard analyze legacy_code.py --enable-ast-research --enable-complexity-metrics --format table

# Quick pattern analysis
ecoguard analyze my_module.py --enable-ast-research --enable-pattern-analysis
```

### For Teams
```bash
# CI/CD integration with AST research
ecoguard analyze . --enable-ast-research --format json --output ci-results.json --severity error

# Weekly code quality report with complexity metrics
ecoguard analyze . --enable-ast-research --enable-complexity-metrics --format text --output weekly-report.txt --severity info

# Architecture analysis for large codebases
ecoguard analyze . --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --format json --output architecture-analysis.json
```

### For Different Project Types

#### Web Applications (Flask/Django)
```bash
ecoguard analyze my_web_app/ --format table --no-ai-code --severity warning
```

#### Data Science Projects
```bash
ecoguard analyze notebooks/ --format json --severity info --output ds-analysis.json
```

#### API Projects
```bash
ecoguard analyze api/ --format table --severity warning --output api-quality.txt
```

#### Legacy Code Assessment
```bash
ecoguard analyze legacy-system/ --format json --severity info --output legacy-audit.json
```

## Integration Examples

### Makefile Integration
```makefile
# Add to your Makefile
.PHONY: analyze
analyze:
\tecoguard analyze . --format table --severity warning

.PHONY: analyze-ci  
analyze-ci:
\tecoguard analyze . --format json --output analysis.json --severity error
```

### Pre-commit Hook
```bash
# .git/hooks/pre-commit
#!/bin/bash
echo "Running EcoGuard AI analysis..."
ecoguard analyze . --format table --severity error
if [ $? -ne 0 ]; then
    echo "Please fix critical issues before committing"
    exit 1
fi
```

### GitHub Actions
```yaml
- name: Code Quality Analysis
  run: |
    pip install ecoguard-ai
    ecoguard analyze src/ --format json --output quality-report.json
    ecoguard analyze src/ --format table --severity warning
```

## Tips & Best Practices

1. **Start Simple**: Begin with `ecoguard analyze . --format table`
2. **Focus on Warnings**: Use `--severity warning` to focus on important issues
3. **Save Reports**: Use `--output` to save results for tracking progress
4. **CI Integration**: Use JSON format for automated processing
5. **Regular Checks**: Run analysis regularly, not just before releases
6. **Team Standards**: Agree on severity levels that fail builds

## Exit Codes

- `0`: Success (no critical issues)
- `1`: Issues found that need attention
- `2`: Tool error (invalid arguments, file not found)

## Getting Help

```bash
# General help
ecoguard --help

# Command-specific help
ecoguard analyze --help
ecoguard rules --help

# Check version
ecoguard --version
```

## 🔬 New AST Research CLI Options

```bash
# AST Research Integration Options:
--enable-ast-research              Enable AST research analysis
--ast-depth [basic|detailed|comprehensive]  Set AST analysis depth (default: basic)
--enable-pattern-analysis          Enable AST pattern recognition and analysis
--enable-complexity-metrics        Enable complexity calculations and metrics

# Examples:
ecoguard analyze file.py --enable-ast-research
ecoguard analyze project/ --enable-ast-research --ast-depth detailed
ecoguard analyze . --enable-ast-research --enable-pattern-analysis --enable-complexity-metrics
```

## Demo Scripts

### Traditional Demo
```bash
# Run the original demo script
./ecoguard_check.sh
```

### NEW: AST Research Demo
```bash
# Run the comprehensive AST research demo
./ast_demo.sh

# This demo showcases:
# - Basic AST research analysis
# - Detailed pattern recognition
# - Comprehensive complexity metrics
# - Multi-file AST analysis
# - JSON export with AST metadata
# - Comparison between traditional and AST-enhanced analysis
```

## Next Steps

1. Try EcoGuard AI on your own projects
2. Integrate into your development workflow
3. Set up CI/CD integration
4. Configure team standards for code quality
5. **NEW**: Explore AST research capabilities for deeper code insights
6. **NEW**: Use complexity metrics to identify refactoring opportunities
7. **NEW**: Leverage pattern analysis for code architecture review
8. Watch for new features in upcoming releases

## What's New in This Release

### 🔬 AST Research Integration (Phase 1 Stage 3)
- **Advanced Code Analysis**: Deep AST traversal and analysis
- **Pattern Recognition**: Automatic detection of code patterns and structures
- **Complexity Metrics**: Comprehensive complexity calculations
- **Rich Visualizations**: Beautiful table displays for AST data
- **Configurable Depth**: Choose from basic, detailed, or comprehensive analysis
- **JSON Metadata**: Complete AST research data in JSON exports
- **Multi-file Support**: AST analysis across entire projects

### New Files in Demo
- `ast_showcase.py` - Demonstrates complex Python patterns for AST analysis
- `complex_patterns.py` - Advanced patterns including security-related constructs
- `ast_demo.sh` - Comprehensive demo script showcasing AST research features

### Enhanced Features
- Four new CLI options for AST research configuration
- Enhanced JSON output with AST metadata
- Improved table displays with AST metrics
- Better complexity analysis and reporting

---

**EcoGuard AI** - Making code quality, security, and sustainability analysis accessible to every developer! 🌱
