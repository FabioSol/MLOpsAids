# Base image for Python environment
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /usr/src/app
COPY /app ./app

# Copy the requirements.txt file and install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install MLflow
RUN pip install mlflow




# Set environment variable for MLflow tracking URI (replace with your tracking server)
ENV MLFLOW_TRACKING_URI http://mlflow-server:5000  # Adjust port if needed

# Entrypoint command
CMD ["flask", "run", "--port", "8080"]