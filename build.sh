#!/bin/bash

# Build script for Render deployment
echo "Starting build process for SamridhhiGenAI website..."

# No build process needed for static HTML site
echo "Static site - no build required"

# Verify files exist
if [ -f "index.html" ]; then
    echo "✅ index.html found"
else
    echo "❌ index.html not found"
    exit 1
fi

if [ -d "styles" ]; then
    echo "✅ styles directory found"
else
    echo "❌ styles directory not found"
    exit 1
fi

if [ -d "scripts" ]; then
    echo "✅ scripts directory found"
else
    echo "❌ scripts directory not found"
    exit 1
fi

echo "✅ Build completed successfully!"
echo "🚀 Ready for deployment on Render"
