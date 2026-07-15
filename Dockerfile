# Use an official lightweight Python image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy dependency file and install packages
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application source code
COPY app.py .

# Inform Docker that the container listens on port 5000
EXPOSE 5000

# Set the command to run your Flask application
CMD ["python", "app.py"]