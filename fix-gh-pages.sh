#!/bin/bash

# Script to fix the base href in the gh-pages branch
# This fixes the blank page issue on GitHub Pages

set -e

echo "🔧 Fixing Flutter Web deployment for GitHub Pages..."

# Store current branch
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

# Checkout gh-pages branch
echo "📥 Checking out gh-pages branch..."
git fetch origin gh-pages
git checkout gh-pages

# Update index.html
echo "📝 Updating index.html..."
sed -i 's|<base href="/">|<base href="/public_portfolio/">|g' index.html

# Update 404.html
echo "📝 Updating 404.html..."
sed -i 's|<base href="/">|<base href="/public_portfolio/">|g' 404.html

# Show changes
echo "📋 Changes made:"
git diff

# Commit changes
echo "💾 Committing changes..."
git add index.html 404.html
git commit -m "Fix base href for GitHub Pages deployment" \
           -m "" \
           -m "- Changed base href from '/' to '/public_portfolio/'" \
           -m "- This fixes the blank page issue when accessing the site" \
           -m "- All resources will now load from the correct path"

# Push changes
echo "🚀 Pushing to gh-pages..."
git push origin gh-pages

# Return to original branch
git checkout "$CURRENT_BRANCH"

echo "✅ Fix applied successfully!"
echo "ℹ️  Wait 1-2 minutes for GitHub Pages to rebuild, then check:"
echo "   https://rapsody0.github.io/public_portfolio/"
