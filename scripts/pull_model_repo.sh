#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define the path to your model sub-repository and requirements file
MODEL_DIR="AidsModel/"
REQUIREMENTS_FILE="requirements.txt"

echo "Updating model sub-repository..."
cd "$MODEL_DIR"
git pull origin main

# Install the required Python packages
echo "Installing Python packages..."
pip install -r "$REQUIREMENTS_FILE"

# Track deployment with MLflow
echo "Tracking deployment with MLflow..."
mlflow run . -P alpha=0.5

echo "Building Docker image..."
docker build -t mlops-aids .

echo "Running Docker container..."
docker run -p 8080:8080 mlops-aids

echo "Deployment script executed successfully."
