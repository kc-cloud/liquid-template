# Use a Python base image
FROM python:3.12-slim-buster

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Expose the port your Flask app will run on
EXPOSE 8080

# Run your Flask app
CMD ["flask", "run", "--host=0.0.0.0", "port=8080"]
