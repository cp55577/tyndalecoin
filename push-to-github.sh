#!/bin/bash

# Script to create GitHub repository and push Tyndale Coin website

echo "🚀 Creating GitHub repository for Tyndale Coin..."

# Check if authenticated
if ! gh auth status &>/dev/null; then
    echo "❌ Not authenticated with GitHub CLI"
    echo "📝 Please run: gh auth login"
    echo "   Then run this script again, or run:"
    echo "   gh repo create tyndalecoin --public --description 'Tyndale Coin (\$TYN) - Honoring William Tyndale' --source=. --remote=origin --push"
    exit 1
fi

# Create repository and push
gh repo create tyndalecoin --public --description "Tyndale Coin (\$TYN) - Honoring William Tyndale" --source=. --remote=origin --push

if [ $? -eq 0 ]; then
    echo "✅ Successfully created repository and pushed code!"
    echo ""
    echo "📄 Next steps:"
    echo "1. Go to your repository settings on GitHub"
    echo "2. Enable GitHub Pages (Settings → Pages → Deploy from branch: main)"
    echo "3. Your site will be live at: https://YOUR_USERNAME.github.io/tyndalecoin/"
else
    echo "❌ Failed to create repository"
    exit 1
fi

