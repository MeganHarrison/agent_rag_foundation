FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
# Use PORT env var provided by Render
CMD ["sh", "-c", "streamlit run ui/app.py --server.port $PORT --server.address 0.0.0.0"]
