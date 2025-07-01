#!/bin/bash
# filepath: /Users/christopherolsen/sheets-1/serve_docs.sh

# Exit immediately if a command exits with a non-zero status
set -e

# Define directories
DOCS_DIR="docs"
BUILD_DIR="$DOCS_DIR/build/html"

# Step 1: Navigate to the docs directory
echo "Navigating to the docs directory..."
cd "$DOCS_DIR"

# Step 2: Install dependencies
if [ -f "requirements.txt" ]; then
  echo "Installing dependencies from requirements.txt..."
  pip install -r requirements.txt
else
  echo "No requirements.txt found. Skipping dependency installation."
fi

# Step 3: Build the documentation
echo "Building the Sphinx documentation..."
make html

# Step 4: Serve the documentation
echo "Serving the documentation locally at http://localhost:8000..."
cd build/html
python3 -m http.server 8000