DevOps Web App Pipeline



DevOps practice project for Beginners - learning CI/CD with Docker and GitHub Actions



!\[CI Pipeline](https://github.com/Sindhukota16/devops-webapp-pipeline/workflows/CI%20Pipeline/badge.svg)



\## 🐳 Docker Hub



\[!\[Docker Hub](https://img.shields.io/docker/pulls/sindhukota16/devops-webapp)](https://hub.docker.com/r/sindhukota16/devops-webapp)



Pull and run the latest version:

```bash

docker pull sindhukota16/devops-webapp:latest

docker run -d -p 8080:80 sindhukota16/devops-webapp:latest

```



\### Available Tags

\- `latest` - Always the newest build from main branch

\- `main` - Main branch build

\- `sha-xxxxxxx` - Specific commit versions



\## 🌍 Live Deployment



\[!\[Deployment Status](https://img.shields.io/badge/status-live-success)](https://devops-webapp-qo82.onrender.com/)



🚀 \*\*Live URL:\*\* \[https://devops-webapp-qo82.onrender.com/](https://devops-webapp-qo82.onrender.com/)



Deployed on Render.com with automatic deployments from GitHub.



\### Deployment Info:

\- \*\*Platform\*\*: Render.com (Free tier)

\- \*\*Auto-deploy\*\*: Enabled (after CI checks pass)

\- \*\*Deployment time\*\*: ~4-6 minutes from push to live



\## 📊 Monitoring



\[!\[Uptime](https://img.shields.io/uptimerobot/ratio/m797172053-c98de80716b82cf74f98f5b6)](https://stats.uptimerobot.com/azA196Mz3x)



\- \*\*Status Page\*\*: \[View Live Status](https://stats.uptimerobot.com/azA196Mz3x)

\- \*\*Uptime Monitor\*\*: UptimeRobot (5-minute checks)

\- \*\*Health Endpoint\*\*: `/health.html`

\- \*\*Email Alerts\*\*: Configured for downtime events

\- \*\*Render Health Checks\*\*: Enabled



\### Health Check

```bash

curl https://devops-webapp-qo82.onrender.com/health.html

\# Returns: OK

```



\## 📋 Project Structure

```

devops-webapp-pipeline/

├── .github/

│   └── workflows/

│       └── ci.yml          # GitHub Actions CI/CD pipeline

├── index.html              # Web application

├── Dockerfile              # Docker container configuration

├── docker-compose.yml      # Multi-container setup

├── NOTES.md               # Learning documentation

└── README.md              # This file



\## 🚀 Complete CI/CD Pipeline

```

Code Push → GitHub Actions → Docker Hub → Render.com → LIVE!

```



Every push to main branch triggers:

1\. ✅ Automated testing and validation

2\. ✅ Docker image build and tag

3\. ✅ Push to Docker Hub

4\. ✅ Automatic deployment to Render

5\. ✅ Live in 4-6 minutes!



\## 🛠️ Technologies Used



\- \*\*Version Control\*\*: Git \& GitHub

\- \*\*Containerization\*\*: Docker \& Docker Compose

\- \*\*CI/CD\*\*: GitHub Actions

\- \*\*Registry\*\*: Docker Hub

\- \*\*Cloud Hosting\*\*: Render.com

\- \*\*Web Server\*\*: Nginx (Alpine)



\## 📚 Learning Journey



This project covers:

\- Git workflows and version control

\- Docker containerization

\- Multi-container applications with Docker Compose

\- CI/CD automation with GitHub Actions

\- Cloud deployment strategies

\- DevOps best practices



See \[NOTES.md](NOTES.md) for detailed learning documentation.



\## 📝 Days Completed



\- ✅ Day 1: Git \& GitHub

\- ✅ Day 2: Docker Basics

\- ✅ Day 3: Docker Compose

\- ✅ Day 4: CI/CD - Part 1

\- ✅ Day 5: CI/CD - Part 2 (Docker Hub)

\- ✅ Day 6: Cloud Deployment

\- ✅ Day 7: Monitoring

\- ✅ Day 8: Documentation \& Polish



---



\*\*🎓 Learning DevOps - One day at a time!\*\*

```



---

