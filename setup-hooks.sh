#!/bin/bash
# Setup script to install git hooks for the Performance Review Tool
# This protects employee review data from accidentally being pushed to GitHub

echo "🔧 Setting up git hooks for Performance Review Tool..."
echo ""

# Check if .git directory exists
if [ ! -d ".git" ]; then
    echo "❌ Error: Not in a git repository root"
    echo "   Run this script from the repository root directory"
    exit 1
fi

# Create hooks directory if it doesn't exist
mkdir -p .git/hooks

# Install pre-push hook
if [ -f ".git-hooks/pre-push" ]; then
    ln -sf ../../.git-hooks/pre-push .git/hooks/pre-push
    chmod +x .git-hooks/pre-push
    chmod +x .git/hooks/pre-push
    echo "✅ Pre-push hook installed"
    echo "   This prevents accidentally pushing review branches to GitHub"
else
    echo "❌ Error: .git-hooks/pre-push not found"
    exit 1
fi

echo ""
echo "✅ Setup complete!"
echo ""
echo "What this does:"
echo "  • Blocks pushing any branch except 'main' to GitHub"
echo "  • Protects employee review data from being committed publicly"
echo "  • You can still work on review branches locally"
echo ""
echo "To test: Try 'git push origin some-other-branch' (it will be blocked)"
echo ""
