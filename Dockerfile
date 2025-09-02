# Use an official Python runtime as a base image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents (src/ and requirements.txt) into the container
COPY src/ ./

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define an environment variable for the runtime environment
# This can be overridden when the container is run
ENV ENVIRONMENT=production

# Run app.py when the container launches
CMD ["python", "app.py"]