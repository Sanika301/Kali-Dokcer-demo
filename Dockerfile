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






# # Commands:
# Docker installation:
#     installation link
#     (You can directly copy 3 commands from above link under install using apt repository)
    
#     sudo apt-get update
#     sudo apt-get install ca-certificates curl
#     sudo install -m 0755 -d /etc/apt/keyrings
#     sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
#     sudo chmod a+r /etc/apt/keyrings/docker.asc
    
#     echo \
#       "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
#       $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
#       sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
#     sudo apt-get update
    
#     sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
    
#     sudo docker run hello-world
    
#     2. Create folder-named docker-demo: (You will have Dockerfile and Hello.txt in this folder) 
    
#     3. Create a text file with some content, and Dockerfile with following contents
    
#     Cmd to pull image : docker pull leplusorg/kali
#     4. sudo docker build -t my-kali:1 .
#     5. sudo docker run -it -p 8080:80 my-kali:1 /bin/bash
#     6 Test whether curl has installed using curl --version 
    
    
    
