# Use an official Ubuntu runtime as a parent image
FROM ubuntu:latest

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# To run the file at which port
EXPOSE 80

# Make script.sh executable
RUN chmod +x script.sh

# Run script.sh when the container launches
CMD ["./script.sh", "-g", "daemon off;"]

