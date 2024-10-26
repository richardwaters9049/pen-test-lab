# 🐳 Pen Test Lab - Docker Penetration Testing Environment

Welcome to **Pen Test Lab** – an easily deployable penetration testing environment leveraging Docker containers. This project provides an accessible, pre-configured environment with **Kali Linux**, **Damn Vulnerable Web Application (DVWA)**, and **Metasploitable2**, all running through your browser for easy testing and learning.

## 🎯 Project Aim

The goal of this project is to provide a simplified way to deploy a penetration testing lab with all tools readily available. By utilising Docker, the setup is **portable**, **customisable**, and ideal for **security researchers**, **ethical hackers**, and **learners**.

## 👍 Features

- **Kali Linux**: Pre-installed with penetration testing tools and running through the browser.
- **Damn Vulnerable Web Application (DVWA)**: A web-based application with multiple security flaws for testing.
- **Metasploitable2**: A vulnerable Linux VM ideal for practising with Metasploit.
- **Accessible Links**: All services are available via your local browser.
- **Easy Start**: One command to start the entire environment with easy-to-access links.

---

## 📂 Project Structure

```bash
pen-test-lab/
│
├── docker-compose.yml        # Defines services (Kali Linux, DVWA, Metasploitable)
├── .gitignore                # Ignore unnecessary files
├── README.md                 # Project documentation (you are here)
├── start_lab.sh              # Script to start the environment and display links
├── config/                   # Configuration files for services
```

## 🧰 Installation and Setup

### Clone the Repository

```bash
git clone https://github.com/richardwaters9049/pen-test-lab.git
cd pen-test-lab
```

### Start the Environment

```bash
./start.sh
```

### Output

Here is an example of the output when running the script:

![Running Containers](images/terminal.png)

## Future Improvements

Here is a list of potential improvements for the project:

- [ ] Add more services (e.g., Wireshark, Burp Suite, etc.)
- [ ] Improve documentation and user experience.
- [ ] Firewall Integration: Implement a firewall to enhance security.
- [ ] Network Segmentation: Divide the environment into separate networks for better isolation.
- [ ] Logging and Monitoring: Implement logging and monitoring tools to track activity and detect anomalies.
- [ ] Regular Updates: Keep the environment up-to-date with the latest security patches and tools.
- [ ] Automated Tests: Set up automated tests to verify the functionality of the environment after each change
