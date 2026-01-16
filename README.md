# public_portfolio

Public deployment repository for Flutter web SPA portfolio.

## 🌐 Live Site
https://rapsody0.github.io/public_portfolio/

## 📝 About
This repository hosts the web build of a Flutter-based digital portfolio. The build files are deployed from a private repository to the `gh-pages` branch of this public repository.

## ⚠️ Blank Page Issue - FIXED

### Problem
The site was showing a blank page due to an incorrect `<base href>` configuration.

### Solution Applied
The `<base href>` has been updated from `/` to `/public_portfolio/` in both `index.html` and `404.html` files on the `gh-pages` branch.

For detailed information about the fix, see [FIX_DEPLOYMENT.md](./FIX_DEPLOYMENT.md).

## 🔧 For Developers

### Building for GitHub Pages
When building the Flutter web app, always use the correct base href:

```bash
flutter build web --release --base-href /public_portfolio/
```

### Applying the Fix
If you need to manually fix the deployment, run:

```bash
./fix-gh-pages.sh
```

Or see [FIX_DEPLOYMENT.md](./FIX_DEPLOYMENT.md) for manual steps.

## 📚 Resources
- [Flutter Web Deployment](https://docs.flutter.dev/deployment/web)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)
