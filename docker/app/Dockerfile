# Base image for Python environment
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/FabioSol/AidsProduction.git /app


RUN git pull
# Copy the requirements.txt file and install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install MLflow
RUN pip install mlflow

#i want to run the mlflow web thingy in 5000

CMD ["python", "src/migration.py"]


EXPOSE 5000 8080

# Entrypoint command to run MLflow server
CMD ["mlflow", "server", "-h", "0.0.0.0", "-p", "5000"]

# Entrypoint command
CMD ["python", "main.py"]