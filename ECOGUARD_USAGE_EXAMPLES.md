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

## Real Examples from Demo

### 1. Analyzing a Single File with Issues
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
│ Files Analyzed         │ 3         │
│ Total Issues           │ 47        │
│ Info                   │ 35        │
│ Warning                │ 12        │
│ Overall Green Score    │ 71.7/100  │
│ Overall Security Score │ 100.0/100 │
└────────────────────────┴───────────┘
```

### 3. JSON Output for Automation
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

### ✅ Working Now (Phase 1 Stage 2)
- **Quality Analysis**: Detects unused imports, unused variables, functions with too many parameters
- **Code Complexity**: Identifies overly complex functions
- **Clean Code Issues**: Finds maintainability problems
- **Multi-file Analysis**: Can analyze entire projects
- **Multiple Output Formats**: JSON, text, table
- **Severity Filtering**: Filter by info, warning, error, critical
- **Detailed Reports**: Line numbers, suggestions, impact analysis

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

# Detailed code review
ecoguard analyze src/ --format text --output code-review.txt
```

### For Teams
```bash
# CI/CD integration
ecoguard analyze . --format json --output ci-results.json --severity error

# Weekly code quality report
ecoguard analyze . --format text --output weekly-report.txt --severity info
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

## Next Steps

1. Try EcoGuard AI on your own projects
2. Integrate into your development workflow
3. Set up CI/CD integration
4. Configure team standards for code quality
5. Watch for new features in upcoming releases

---

**EcoGuard AI** - Making code quality, security, and sustainability analysis accessible to every developer! 🌱
