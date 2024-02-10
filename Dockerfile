# Use the official Flutter Docker image as the base image
FROM cirrusci/flutter:stable AS builder

# Set environment variables
ENV FLUTTER_HOME=/flutter
ENV PATH=$FLUTTER_HOME/bin:$PATH

# Set up Flutter
RUN flutter precache
RUN flutter config --no-analytics
RUN flutter doctor

# Copy the Flutter project into the container
COPY . /app
WORKDIR /app

# Build the Flutter project
RUN flutter build web --release

# Use Nginx as the web server to serve the Flutter web application
FROM nginx:alpine

# Copy the built Flutter web files into the Nginx html directory
COPY --from=builder /app/build/web /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
