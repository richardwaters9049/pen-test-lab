#!/bin/bash

# Start the containers
echo -e "\n🚀 Starting the Pen-Test Lab...\n"
docker-compose up -d

# Display a message and wait for a fixed delay
echo -e "\n🔨 Building the hacking environment, please wait...\n"
sleep 30  # Delay for 40 seconds to ensure services are fully up

# Check the status of the containers and ensure they are running
function check_services() {
  STATUS=$(docker ps --filter "status=running" --filter "name=meta2|metasploitable|kali-linux-new" -q | wc -l)
  if [[ $STATUS -eq 3 ]]; then
    echo -e "✅ All services are up and running!"
  else
    echo -e "⚠️ Some services may not be fully ready. Please check manually."
  fi
}

# Call the function to check services
check_services

# Display the addresses
echo -e "\n🔗 Lab Environment is Ready! You can now access the following services:\n"
echo -e "🔹 Kali Linux: \033[1;34mhttp://localhost:3000/\033[0m"
echo -e "🔹 Damn Vulnerable Web App: \033[1;34mhttp://localhost:8081/login.php\033[0m"
echo -e "🔹 Metasploitable2: \033[1;34mhttp://localhost/\033[0m\n"
echo -e "✨ Happy Hacking! 🧑‍💻"
