# Dockerfile for Kali Linux with nano installed
FROM lscr.io/linuxserver/kali-linux:latest

# Install nano and any other necessary tools
RUN apt update && apt install -y nano

# Set the default command to bash
CMD ["/bin/bash"]
