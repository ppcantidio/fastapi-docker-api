# Use the official Python image from the Docker Hub
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install FastAPI and Uvicorn
RUN pip install fastapi uvicorn

# Expose port 8053 for the app
EXPOSE 8053

# Command to run the app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8053"]
