
# Use the official Apache image
FROM httpd:2.4

WORKDIR /nickos-app

# Copy your custom HTML files to the container
COPY ./nickos.html/ /usr/local/apache2

# Expose port 80 for the web server
EXPOSE 80

# Start the Apache server
CMD ["httpd-foreground"]

# # Stage 1: Build Stage with As Builder
# FROM golang:1.19 AS builder
# WORKDIR /app
# COPY . .
# RUN go build -o myapp

# # Stage 2: Production Stage
# FROM alpine:latest
# WORKDIR /app
# COPY --from=builder /app/myapp .
# CMD ["./myapp"]