# Use the official Dart image as a parent image
FROM dart:stable AS build

# Set the working directory
WORKDIR /app

# Copy the code into the container
COPY . .

# Fetch the dependencies
RUN dart pub get

# Build the application
RUN dart pub global activate webdev
RUN dart pub global run webdev build

# Use Nginx to serve the app
FROM nginx:alpine

# Copy the build artifacts from the build stage, and the Nginx configuration
COPY --from=build /app/build/web /usr/share/nginx/html
COPY web/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]