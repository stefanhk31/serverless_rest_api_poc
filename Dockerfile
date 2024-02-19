# Use the Dart base image
FROM dart

# Copy the project files into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Run the build script
RUN chmod +x build.sh && ./build.sh
