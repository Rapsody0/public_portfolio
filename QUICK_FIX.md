# Quick Fix Command

To fix the blank page issue immediately, run this single command:

```bash
git checkout gh-pages && \
sed -i 's|<base href="/">|<base href="/public_portfolio/">|g' index.html 404.html && \
git add index.html 404.html && \
git commit -m "Fix base href for GitHub Pages" && \
git push origin gh-pages && \
git checkout -
```

## What This Does

1. Switches to the `gh-pages` branch
2. Updates the base href in `index.html` and `404.html`
3. Commits the changes
4. Pushes to GitHub
5. Returns to your previous branch

## After Running

Wait 1-2 minutes for GitHub Pages to rebuild, then visit:
https://rapsody0.github.io/public_portfolio/

The page should now load correctly! 🎉

## Alternative: Use the Script

If you prefer a more verbose output with status messages:

```bash
./fix-gh-pages.sh
```

## For Future Builds

Remember to build with the correct base href:

```bash
flutter build web --release --base-href /public_portfolio/
```
