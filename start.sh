#!/bin/bash

# Start Docker Compose in detached mode
docker-compose up -d

# Check if the containers are up
if [ $? -eq 0 ]; then
  # Print the access URLs
  echo -e "\nAll services are up and running!"
  echo "------------------------------------"
  echo "Kali Linux:     http://localhost:3000/"
  echo "DVWA:           http://localhost:8081/login.php"
  echo "Metasploitable: http://localhost/"
  echo "------------------------------------"
else
  echo "Failed to start services. Check the logs for more details."
fi
