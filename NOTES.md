\# DevOps Learning Journey - Daily Notes



\## Day 1 - November 20, 2025

\### Today's Goal: Set up Git and GitHub



\### What I Learned:



\#### 1. What is Version Control?

\- Version control tracks changes to files over time

\- Like 'Track Changes' in Word, but for code

\- Lets you see who changed what and when

\- You can go back to any previous version



\#### 2. What is Git?

\- Git is a version control system

\- Runs on your local computer

\- Created by Linus Torvalds (who also created Linux)

\- Most popular version control tool in the world



\#### 3. What is GitHub?

\- GitHub is a cloud platform for Git

\- Stores your code online (like Google Drive for code)

\- Lets you collaborate with other developers

\- Acts as a portfolio to show your work



\### Commands I Used:



```bash

\# Check Git version

git --version



\# Configure Git with my name

git config --global user.name "Your Name"



\# Configure Git with my email

git config --global user.email "your.email@example.com"



\# Clone (download) a repository from GitHub

git clone <repository-url>



\# Check status of files

git status



\# Add files to staging area

git add .



\# Commit (save) changes with a message

git commit -m "Your message here"



\# Push (upload) to GitHub

git push origin main

```



\### What I Built:

\- Created a GitHub account

\- Created my first repository: devops-webapp-pipeline

\- Built a simple HTML web page

\- Pushed my first code to GitHub



\### Challenges I Faced:

The challenges that I have faced is with the spacing the command line and I have corrected them and run the command again 



\### Key Takeaways:

1\. Git tracks changes locally on my computer

2\. GitHub stores my code online

3\. The basic workflow is: add → commit → push

4\. Every commit should have a clear, descriptive message



\### Tomorrow's Plan:

\- Learn about Docker and containers

\- Create a Dockerfile

\- Build my first container image

## Day 2 - November 21, 2025
### Today's Goal: Containerize my web application with Docker

### What I Learned:

#### 1. What is Docker?
- Docker is a containerization platform
- Packages application + dependencies into containers
- Solves the 'works on my machine' problem
- Containers are lightweight and portable

#### 2. Docker vs Virtual Machines
- VMs: Heavy, slow, include full OS
- Containers: Light, fast, share host OS kernel
- Containers start in seconds vs minutes for VMs
- Can run many containers vs few VMs on same hardware

#### 3. Key Docker Concepts
- **Image**: Blueprint/template for containers (like a recipe)
- **Container**: Running instance of an image (the actual food from recipe)
- **Dockerfile**: Text file with instructions to build an image
- **Docker Hub**: Registry to store and share images (like GitHub for images)

#### 4. My Dockerfile Explained
```dockerfile
FROM nginx:alpine       # Start with nginx web server
COPY index.html /usr/share/nginx/html/  # Copy my web page
EXPOSE 80               # App runs on port 80
CMD ["nginx", "-g", "daemon off;"]  # Start web server
```

### Commands I Used:

```bash
# Check Docker version
docker --version

# Test Docker installation
docker run hello-world

# Build an image
docker build -t my-devops-app .

# List all images
docker images

# Run a container
docker run -d -p 8080:80 --name my-app my-devops-app

# List running containers
docker ps

# List all containers (including stopped)
docker ps -a

# Stop a container
docker stop my-app

# Start a stopped container
docker start my-app

# Remove a container
docker rm my-app

# View container logs
docker logs my-app

# Login to Docker Hub
docker login

# Tag an image for Docker Hub
docker tag my-devops-app username/my-devops-app:latest

# Push image to Docker Hub
docker push username/my-devops-app:latest
```

### What I Built:
- Created my first Dockerfile
- Built my first Docker image
- Ran my web app in a container
- Created Docker Hub account
- Pushed my image to Docker Hub
- My app is now portable and can run anywhere!

### Challenges I Faced:
Day 2 went very smoothly! My main challenge was simply learning and understanding the new Docker concepts. 

### Key Takeaways:
1. Containers solve environment consistency problems
2. Docker images are built from Dockerfiles
3. One image can create many containers
4. Port mapping connects container ports to host ports
5. Docker Hub is the central registry for sharing images

### Tomorrow's Plan:
- Learn Docker Compose
- Add a database container
- Run multiple containers together


clear
cd clear
delete
