FROM python:3.9-slim
RUN pip install --upgrade pip
RUN pip install mlflow
WORKDIR /app
VOLUME /app/mlruns
EXPOSE 5000
CMD ["mlflow", "server", "--host", "0.0.0.0", "--port", "5000", "--backend-store-uri", "sqlite:///mlflow.db"]
