
# Use a lightweight base image
FROM alpine:latest

# Set working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install bash
RUN apk --no-cache add bash

# Define environment variable
ENV NAME World

# Default command to run when starting the container
CMD ["bash"]
