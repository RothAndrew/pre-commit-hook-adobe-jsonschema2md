# pre-commit-hook-adobe-jsonschema2md
[Pre-commit](https://pre-commit.com/) hook for Adobe's jsonschema2md tool

## Usage

Here's an example of how to use this to generate the schema from helm chart values, then generate docs from the schema

```yaml
repos:
  - repo: https://github.com/losisin/helm-values-schema-json
    rev: vX.Y.Z
    hooks:
      - id: helm-schema
        args: ["-input", "chart/values.yaml", "-output", "chart/values.schema.json", "-draft", "7", "-indent", "2"]
  - repo: https://github.com/rothandrew/pre-commit-hook-adobe-jsonschema2md
    rev: X.Y.Z
    hooks:
      - id: jsonschema2md
        args: ["-d", "chart", "-o", "chart/docs", "-x", "-", "--example-format", "yaml", "--header", "true"]
```
