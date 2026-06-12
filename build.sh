#!/bin/sh
# Rebuild the static assets for index.html.
# Run this after editing src/app.jsx or adding/removing Tailwind classes.
set -e

# 1. Compile the React app (JSX -> minified JS)
npx -y esbuild src/app.jsx --loader:.jsx=jsx --jsx=transform --minify --target=es2018 --outfile=assets/app.js

# 2. Build the static Tailwind CSS (replaces the old Play-CDN script)
npx -y tailwindcss@3.4.17 -c tailwind.config.static.js -i src/tailwind-input.css -o assets/tailwind.css --minify

echo "Done. Deploy by committing index.html + assets/ + vendor/."
