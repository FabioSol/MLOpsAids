# Base image for Python environment
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/FabioSol/AidsProduction.git . && ls -R

# Copy the requirements.txt file and install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables for Python
ENV PYTHONUNBUFFERED=1
ENV PYTHONPATH=/app:/app/api:/app/src:/app/AidsModel

EXPOSE 8080

# Entrypoint command
CMD ["python", "main.py"]