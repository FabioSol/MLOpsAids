# Base image for Python environment
FROM python:3.11-slim

# Install dependencies
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy application code
COPY . . cpy AidsModel, app, scripts and src

# Install MLflow
RUN pip install mlflow

# Set environment variable for MLflow tracking URI (replace with your tracking server)
ENV MLFLOW_TRACKING_URI http://mlflow-server:5000  # Adjust port if needed

# Entrypoint command
CMD ["flask", "run"]