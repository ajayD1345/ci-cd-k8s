# ⚙️ DevOps Environment Automation

This repository automates the setup of a complete **DevOps environment** using a single Bash script — installing and configuring key tools such as **Docker**, **Ansible**, **Terraform**, **Kubernetes (kubectl)**, **Git**, and **Jenkins**.  

It also includes supporting folders for **Ansible**, **Kubernetes**, **Terraform**, and application-related files for extending or testing deployments.

---

## 🧠 Overview

This project is designed to quickly bootstrap a working DevOps lab or CI/CD setup.  
With a single command, it provisions the foundational tools required for modern infrastructure automation, configuration management, and continuous integration.

---

## 📂 Repository Structure

- **ansible/** — Configuration management playbooks and roles.  
- **app/** — Application files for deployment or testing automation.  
- **k8s/** — Kubernetes manifests for deployment and orchestration.  
- **scripts/** — Utility scripts for provisioning or cleanup.  
- **terraform/** — Infrastructure-as-Code (IaC) templates for resource creation.  
- **setup.sh** — The main automation script for installing and configuring all required DevOps tools.  

---

## 🚀 Tools Installed

The `setup.sh` script installs and configures:

| Tool | Purpose |
|------|----------|
| **Docker & Docker Compose** | Containerization and container orchestration |
| **Git** | Version control system |
| **Ansible** | Configuration management and automation |
| **kubectl** | Kubernetes command-line tool |
| **Terraform** | Infrastructure provisioning and IaC |
| **Jenkins** | CI/CD automation server |

---

## ⚙️ How It Works

1. **System Update**
   - Updates and upgrades package repositories.

2. **Docker Setup**
   - Adds Docker GPG key, repository, and installs Docker engine and plugins.

3. **Git Installation**
   - Installs Git for version control and repository management.

4. **Ansible Installation**
   - Installs Ansible from the official PPA.

5. **Kubernetes CLI Installation**
   - Installs the latest stable version of `kubectl`.

6. **Terraform Setup**
   - Adds HashiCorp’s repository and installs Terraform.

7. **Jenkins Setup**
   - Installs and starts Jenkins using the official Debian package.  
   - Configures Java and enables Jenkins to start at boot.  
   - Optionally allows Jenkins to use Docker for building containers.

8. **Verification**
   - Runs validation commands like `docker run hello-world` and `kubectl version --client`.

---

## 🧩 Usage

1. **Clone the repository:**
   ```bash
   git clone https://github.com/<your-username>/devops-environment-setup.git
   cd devops-environment-setup
   ```
2. **Make the script executable:**
   ```
   chmod +x setup.sh
   ```
3. **Run the setup script:**
   ```
   ./setup.sh
   ```
4. **Once complete, verify installations:**
   ```
   docker --version
   ansible --version
   terraform --version
   kubectl version --client
   java -version
   ```

## 🧠 Project Purpose

This project serves as:

- A personal DevOps lab setup tool.
- A ready-to-use automation foundation for projects requiring multiple DevOps tools.
- A demonstration of automation scripting and environment provisioning for CI/CD.

# 🧩 Conclusion

This project demonstrates the automation of a full DevOps ecosystem setup — combining scripting, configuration management, containerization, orchestration, and CI/CD.
It reflects practical experience in environment provisioning, infrastructure automation, and toolchain integration — key skills for real-world DevOps engineering.

## 🧑‍💻 Author
 - Hamed Ayojide
