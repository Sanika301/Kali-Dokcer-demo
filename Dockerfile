# Use Kali Linux as the base image
FROM leplusorg/kali

# Set the working directory to /workspace
WORKDIR /workspace

# Copy all files from the host's current directory to the /workspace directory in the container
COPY . /workspace

# Update package lists and install nmap and curl
RUN apt-get update && \
    apt-get install -y nmap curl && \
    apt-get clean && \
    echo "Hello from the /workspace directory in Kali!" > welcome.txt
    
# Set the default command to list files in the working directory
CMD ["ls", "-la"]
