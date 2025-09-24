# Use a compatible Python base image
FROM python:3.10-bullseye

# Install required system packages
RUN apt-get update && apt-get install -y python3-distutils

# Set working directory
WORKDIR /data

# Install Django
RUN pip install django==3.2

# Copy project files into the container
COPY . .

# Run database migrations
RUN python manage.py migrate

# Optional: expose port if you're running the app
EXPOSE 8000

# Optional: default command to run the server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
