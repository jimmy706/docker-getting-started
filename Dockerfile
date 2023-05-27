# Base image
FROM python:3.11.3-slim-buster

# Set working directory
WORKDIR /app

# Copy the entire application
COPY . .
RUN pip install --no-cache-dir -r requirements.txt

# Expose the application port
EXPOSE 5000

# Set environment variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Start the application
CMD ["flask", "run"]