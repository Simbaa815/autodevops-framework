#!/bin/bash
echo "🔍 Auditing GitHub repo..."
echo "Repository: $(basename $(git rev-parse --show-toplevel))"
echo "Branches:"
git branch -a
echo "Checking workflows..."
ls -R .github/workflows || echo "No workflows yet."
