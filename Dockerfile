# Use an official Dart runtime as a parent image
FROM dart:latest

# Set the working directory in the container
WORKDIR /app

# Copy the pubspec.yaml and pubspec.lock files to the container
COPY pubspec.yaml pubspec.lock ./

# Get dependencies (this step will be cached if the pubspec files haven't changed)
RUN pub get

# Copy the entire project to the container
COPY . .

# Build the Dart application
RUN dart compile exe bin/ntp_1.dart

# Set the command to run your application
CMD ["./bin/ntp_1"]
