 #  Only for installing
FROM ubuntu:latest               
WORKDIR /nice-web
COPY index.html /usr/local/nice
RUN apt-get update  &&\
    apt-get install -y git  &&\
    apt-get install -y python3.10  &&\
CMD [ "/bin/bash" , "foreground"]

# FROM nginx:latest

# WORKDIR /nginx-dir

# # Copy your custom HTML files to the container
# COPY index.html /usr/share/nginx/index

# # Expose port 80 for the web server
# EXPOSE 80

# Start the Apache server
ENTRYPOINT ["nginx-foreground"]

# Use the official Apache image
# FROM httpd:2.4

# WORKDIR /nickos-app

# # Copy your custom HTML files to the container
# COPY index.html /var/www/html

# # Expose port 80 for the web server
# EXPOSE 80

# # Start the Apache server
# CMD ["httpd-foreground"]

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