# 🌱 EcoGuard AI Demo Repository

**Comprehensive demonstration of EcoGuard AI's code analysis capabilities, featuring the newly integrated Stage 3 AST Research functionality.**

[![EcoGuard AI](https://img.shields.io/badge/EcoGuard%20AI-Production%20Ready-green)](https://github.com/ecoguard-ai)
[![AST Research](https://img.shields.io/badge/AST%20Research-Stage%203-blue)](https://github.com/ecoguard-ai)
[![Python 3.8+](https://img.shields.io/badge/python-3.8+-blue.svg)](https://www.python.org/downloads/)

## 🚀 What's New: Stage 3 AST Research Integration

This demo repository showcases the **newly integrated AST (Abstract Syntax Tree) research capabilities** that enhance EcoGuard AI's code analysis with deep structural insights, pattern detection, and complexity metrics.

### ✨ New Features

- 🔬 **AST Research Integration** (`--enable-ast-research`)
- 📊 **Configurable Analysis Depth** (`--ast-depth basic|detailed|comprehensive`)
- 🎯 **Advanced Pattern Analysis** (`--enable-pattern-analysis`)
- 📈 **Complexity Metrics** (`--enable-complexity-metrics`)
- 💾 **Enhanced JSON Export** with AST metadata
- 🎨 **Beautiful Table Displays** for analysis results
- 🔄 **Full Backward Compatibility** with existing commands

## 📁 Repository Structure

```
ecoguard-demo/
├── demos/                     # Organized demo scenarios
│   ├── basic/                 # Standard analysis demonstrations
│   ├── ast-research/          # AST research feature showcases
│   ├── security/              # Security-focused analysis
│   ├── performance/           # Performance optimization analysis
│   ├── quality/               # Code quality assessment
│   └── comprehensive/         # Complete feature demonstration
├── sample-code/               # Code samples for analysis
│   ├── simple/                # Basic examples and clean code
│   ├── complex/               # Advanced patterns and structures
│   └── real-world/            # Realistic application examples
├── scripts/                   # Demo automation and utilities
│   ├── individual/            # Feature-specific demonstrations
│   ├── showcase/              # Presentation-ready demos
│   └── automation/            # Batch processing and automation
└── docs/                      # Documentation and results
    ├── guides/                # Usage guides and tutorials
    ├── examples/              # Example outputs and explanations
    └── results/               # Analysis results and reports
```

## 🎬 Quick Start Demos

### 1. 🌟 Comprehensive Feature Showcase

Experience all EcoGuard AI capabilities including the new AST research features:

```bash
./demos/comprehensive/full_demo.sh
```

This demo demonstrates:
- ✅ Standard analysis (backward compatible)
- 🔬 AST research integration at all depth levels
- 🎯 Pattern analysis and complexity metrics
- 💾 Enhanced JSON export capabilities
- 🔄 Backward compatibility verification

### 2. 🔬 AST Research Deep Dive

Explore the new AST research capabilities:

```bash
./demos/ast-research/ast_research_demo.sh
```

Features demonstrated:
- Basic, detailed, and comprehensive AST analysis
- Pattern detection and complexity metrics
- Enhanced visualizations and reports
- JSON export with AST metadata

### 3. 🛡️ Security Analysis

Focus on security vulnerability detection:

```bash
./demos/security/security_demo.sh
```

### 4. ⚡ Performance Analysis

Identify performance bottlenecks and optimization opportunities:

```bash
./demos/performance/performance_demo.sh
```

### 5. ✨ Code Quality Assessment

Evaluate code quality and maintainability:

```bash
./demos/quality/quality_demo.sh
```

## 🔧 Individual Feature Demonstrations

### AST Depth Comparison

Compare analysis results across different AST depth levels:

```bash
./scripts/individual/ast_depth_comparison.sh
```

### Pattern Analysis

Deep dive into pattern detection capabilities:

```bash
./scripts/individual/pattern_analysis_demo.sh
```

### Complexity Metrics

Explore complexity measurement features:

```bash
./scripts/individual/complexity_metrics_demo.sh
```

## 🤖 Automation and Batch Processing

### Batch Analysis

Run comprehensive analysis across multiple files and configurations:

```bash
./scripts/automation/batch_analysis.sh
```

This generates:
- Multiple analysis results in JSON format
- Comparative reports across different configurations
- Summary insights and recommendations

## 📊 AST Research Features in Detail

### Analysis Depth Levels

| Level | Description | Use Case |
|-------|-------------|----------|
| **Basic** | Essential AST metrics | Quick overview, CI/CD integration |
| **Detailed** | Enhanced insights with patterns | Development workflow, code review |
| **Comprehensive** | Complete analysis with all features | Deep analysis, architecture review |

### Command Examples

```bash
# Basic AST research
ecoguard analyze sample-code/simple/clean_code.py --enable-ast-research --ast-depth basic

# Detailed analysis with patterns
ecoguard analyze sample-code/complex/ast_showcase.py --enable-ast-research --ast-depth detailed --enable-pattern-analysis

# Comprehensive analysis with all features
ecoguard analyze sample-code/real-world/web_api_example.py --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics

# Export enhanced JSON with AST metadata
ecoguard analyze sample-code/complex/complex_patterns.py --enable-ast-research --ast-depth comprehensive --enable-pattern-analysis --enable-complexity-metrics --format json --output analysis_results.json
```

### Backward Compatibility

All existing commands continue to work unchanged:

```bash
# Standard analysis (no changes required)
ecoguard analyze sample-code/simple/problematic_app.py

# Existing JSON export
ecoguard analyze sample-code/simple/quality_issues.py --format json --output results.json
```

## 📋 Sample Code Overview

### Simple Examples
- `basic_functions.py` - Clean, well-structured code
- `clean_code.py` - Best practices demonstration
- `quality_issues.py` - Common code quality problems
- `problematic_app.py` - Security vulnerabilities

### Complex Examples
- `ast_showcase.py` - Advanced AST patterns
- `complex_patterns.py` - Intricate code structures

### Real-World Examples
- `web_api_example.py` - Realistic web application with various issues

## 🎯 Analysis Results Interpretation

### AST Research Output

The enhanced analysis provides:
- **Structural Metrics**: Function complexity, nesting depth, cyclomatic complexity
- **Pattern Detection**: Design patterns, anti-patterns, code smells
- **Security Insights**: Vulnerability patterns, unsafe practices
- **Performance Indicators**: Bottlenecks, optimization opportunities
- **Maintainability Scores**: Code readability, modularity assessment

### JSON Export Enhancement

AST-enhanced JSON exports include:
```json
{
  "analysis_results": { /* standard results */ },
  "ast_research": {
    "depth_level": "comprehensive",
    "structural_metrics": { /* complexity data */ },
    "pattern_analysis": { /* detected patterns */ },
    "complexity_metrics": { /* detailed metrics */ }
  }
}
```

## �� Migration from Standard Analysis

Existing workflows require no changes. To enhance with AST research:

1. **Add AST research**: Include `--enable-ast-research`
2. **Choose depth**: Add `--ast-depth basic|detailed|comprehensive`
3. **Enable patterns**: Add `--enable-pattern-analysis`
4. **Include metrics**: Add `--enable-complexity-metrics`

## ��️ Prerequisites

- EcoGuard AI CLI installed and configured
- Python 3.8+ for sample code execution
- Bash shell for demo scripts

## 📚 Documentation

- **Installation Guide**: See main EcoGuard AI repository
- **API Reference**: Complete CLI documentation available
- **Examples**: Check `docs/examples/` for detailed use cases
- **Results**: Analysis outputs in `docs/results/`

## 🎉 Success Stories

The Stage 3 AST Research Integration provides:
- **152 tests passing** - Comprehensive validation
- **Enhanced insights** - Deeper code understanding
- **Beautiful displays** - Rich table visualizations
- **JSON enhancement** - Complete metadata export
- **Backward compatibility** - No breaking changes

## 🤝 Contributing

This demo repository showcases EcoGuard AI capabilities. For contributions to the main project, please visit the primary EcoGuard AI repository.

## 📧 Support

For questions about EcoGuard AI or these demonstrations:
- Check the main repository documentation
- Review the demo script outputs
- Examine the generated analysis results

---

**🌱 EcoGuard AI - Making code analysis intelligent, comprehensive, and actionable.**

*Stage 3 AST Research Integration: Production Ready ✅*
