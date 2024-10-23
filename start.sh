#!/bin/bash

# Clear the terminal
clear

# Define colors
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
BLUE="\033[1;34m"
CYAN="\033[1;36m"
RED="\033[1;31m"
NC="\033[0m" # No Color

# Function to display messages
display_message() {
    echo -e "${CYAN}---------------------------------------------------${NC}"
    echo -e "${GREEN}$1${NC}"
    echo -e "${CYAN}---------------------------------------------------${NC}"
}

# Start the environment
display_message "🚀 Starting the Pen Test Lab Environment..."

# Check if the Docker network already exists
if docker network ls | grep -q "pen-test-lab_net"; then
    display_message "🔍 Found network: pen-test-lab_net. Connected to network: pen-test-lab_net."
else
    display_message "🐳 Creating Docker network: pen-test-lab_net..."
    docker network create pen-test-lab_net
fi

# Start Docker containers
docker-compose up -d

# Check if Docker Compose was successful
if [ $? -eq 0 ]; then
    # Display loading message
    display_message "⏳ Building the hacking environment... Please wait!"

    # Delay for loading (30 seconds)
    sleep 30

    # Display accessible links
    echo -e "${YELLOW}📌 Access your services at:${NC}"
    echo -e "${BLUE}Kali Linux: ${GREEN}http://localhost:3000/${NC}"
    echo -e "${BLUE}Damn Vulnerable Web Application: ${GREEN}http://localhost:8081/login.php${NC}"
    echo -e "${BLUE}Metasploitable2: ${GREEN}http://localhost/${NC}"

    # Final message
    display_message "✅ Environment is up and running! Enjoy your testing!"
else
    echo -e "${RED}❌ Failed to start the environment. Please check the logs for more details.${NC}"
fi
