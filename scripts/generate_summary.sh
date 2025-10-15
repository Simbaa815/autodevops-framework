#!/bin/bash
echo "🧾 Generating consolidated audit summary..."
cat docs/github_audit.md docs/aws_audit.md docs/mongodb_audit.md > docs/audit_summary.md
