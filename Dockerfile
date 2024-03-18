# Use a lightweight Node.js base image

FROM node:alpine
 
# Create a working directory inside the container

WORKDIR /app
 
# Install http-server globally

RUN npm install -g http-server
 
# Copy your website files into the working directory (optional)

COPY . /app
 
# Expose the port used by http-server (usually 8080)

EXPOSE 8080
 
# Command to start the http-server when the container runs

CMD ["http-server", "-p", "8080"] 
