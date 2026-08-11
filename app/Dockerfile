FROM python:3.12-slim

# Create application directory
WORKDIR /app

# Create non-root user
RUN useradd --create-home appuser

# Install Python dependencies
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copy application source code
COPY app.py .

# Run as non-root user
USER appuser

# Application listens on 8080
EXPOSE 8080

# Start application
CMD ["python", "app.py"]
