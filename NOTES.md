### DevOps Learning Journey - Daily Notes

## Day 1 - November 20, 2025
### Today's Goal: Set up Git and GitHub

### What I Learned:

#### 1. What is Version Control?
- Version control tracks changes to files over time
- Like 'Track Changes' in Word, but for code
- Lets you see who changed what and when
- You can go back to any previous version

#### 2. What is Git?
- Git is a version control system
- Runs on your local computer
- Created by Linus Torvalds (who also created Linux)
- Most popular version control tool in the world

#### 3. What is GitHub?
- GitHub is a cloud platform for Git
- Stores your code online (like Google Drive for code)
- Lets you collaborate with other developers
- Acts as a portfolio to show your work

### Commands I Used:

```bash
# Check Git version
git --version

# Configure Git with my name
git config --global user.name "Your Name"

# Configure Git with my email
git config --global user.email "your.email@example.com"

# Clone (download) a repository from GitHub
git clone <repository-url>

# Check status of files
git status

# Add files to staging area
git add .

# Commit (save) changes with a message
git commit -m "Your message here"

# Push (upload) to GitHub
git push origin main
```

### What I Built:
- Created a GitHub account
- Created my first repository: devops-webapp-pipeline
- Built a simple HTML web page
- Pushed my first code to GitHub

### Challenges I Faced:
The challenges that I have faced is with the spacing the command line and I have corrected them and run the command again 

### Key Takeaways:

1. Git tracks changes locally on my computer
2. GitHub stores my code online
3. The basic workflow is: add → commit → push
4. Every commit should have a clear, descriptive message

### Tomorrow's Plan:
- Learn about Docker and containers
- Create a Dockerfile
- Build my first container image

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

## Day 3 - December 03, 2025
### Today's Goal: Multi-container applications with Docker Compose

### What I Learned:

#### 1. What is Docker Compose?
- Tool for defining and running multi-container applications
- Uses YAML files to configure services
- Start everything with one command: docker-compose up
- Makes managing complex applications simple

#### 2. Key Concepts
- **Services**: Each container defined in docker-compose.yml
- **Networks**: Automatic networking between containers
- **Volumes**: Persistent data storage
- **Environment Variables**: Configuration without hardcoding
- **depends_on**: Control startup order

#### 3. My docker-compose.yml Structure
- Defined 2 services: web and database
- Web service: builds from Dockerfile, exposes port 8080
- Database service: PostgreSQL 15, persistent storage with volumes
- Created custom network for container communication
- Used environment variables for database credentials

#### 4. Container Networking
- Containers on same network can communicate using service names
- Web container connects to database using 'database' as hostname
- Docker Compose automatically creates DNS resolution
- Isolated from host network by default

### Commands I Used:

```bash
# Start all services
docker-compose up -d

# Stop all services
docker-compose down

# View running services
docker-compose ps

# View logs
docker-compose logs
docker-compose logs web
docker-compose logs -f  # Follow in real-time

# Restart services
docker-compose restart

# Rebuild and start
docker-compose up -d --build
```

### What I Built:
- docker-compose.yml file with 2 services
- Multi-container application (web + database)
- Custom network for container communication
- Persistent volume for database data
- Updated web app showing multi-container status

### Challenges I Faced:
- Had to start Docker Desktop first 
- Fixed BOM character in index.html
- Learned to sync with git pull before push

### Key Takeaways:
1. Docker Compose simplifies multi-container management
2. YAML is human-readable configuration format
3. Services can communicate using service names as hostnames
4. Volumes ensure data persists across container restarts
5. Environment variables keep configuration flexible and secure

### Tomorrow's Plan:
- Set up CI/CD pipeline with GitHub Actions
- Automate testing
- Automate Docker image building


## Day 4 - December 8, 2025
### Today's Goal: Set up CI/CD pipeline with GitHub Actions

### What I Learned:

#### 1. What is CI/CD?
- **CI** = Continuous Integration (automated testing & building)
- **CD** = Continuous Deployment (automated deployment)
- Automates repetitive tasks every time you push code
- Catches bugs early before they reach production
- Ensures consistent code quality
- Saves time and prevents human error

#### 2. GitHub Actions
- GitHub's built-in CI/CD automation tool
- Completely FREE for public repositories
- Workflows defined in YAML files
- Runs on GitHub's servers (called runners)
- Triggered automatically by events (push, pull requests, etc.)
- Industry-standard tool used by professional teams

#### 3. Workflow Structure
- **Workflow**: Complete automation process (defined in .yml file)
- **Job**: Group of steps that run together
- **Step**: Individual task or command
- **Trigger**: Event that starts workflow (on: push, pull_request)
- **Runner**: Virtual machine that executes workflow (ubuntu-latest)

#### 4. My CI Pipeline Steps
1. **Checkout code** - Downloads repository to runner
2. **Validate HTML** - Checks index.html has proper structure
3. **Check Dockerfile** - Verifies Dockerfile exists
4. **Setup Docker Buildx** - Prepares Docker environment
5. **Build Docker image** - Creates container image from Dockerfile
6. **Test Docker container** - Runs container and verifies it works

#### 5. YAML Syntax
- Human-readable configuration format
- Uses indentation to show hierarchy (like Python)
- Must use SPACES not tabs (very important!)
- Key-value pairs with colons
- Lists with dashes
- Comments start with #

### What I Built:
- Created `.github/workflows/` directory structure
- Built `ci.yml` workflow file with 6 automated steps
- Automated HTML validation check
- Automated Dockerfile existence check
- Automated Docker image building
- Automated container testing
- Added CI status badge to README.md
- Working CI pipeline that runs on every push!

### Commands I Used:
```bash
# Create workflow directory
mkdir -p .github/workflows

# Create workflow file
touch .github/workflows/ci.yml
nano .github/workflows/ci.yml

# Check what changed
git status

# Add workflow file
git add .

# Commit changes
git commit -m "Add CI workflow with GitHub Actions - Day 4"

# Push to GitHub (triggers workflow!)
git push origin main

# View remote URL
git remote -v
```

### Challenges I Faced:
- GitHub token didn't have `workflow` scope - created new token with correct permissions
- Git cached old credentials - used browser authentication to fix
- Terminal froze during sign-in - closed and reopened Git Bash
- First time with YAML syntax - learned indentation matters (spaces not tabs!)
- Overall: Token/authentication issues added 30 minutes, but learned valuable troubleshooting skills!

### Key Takeaways:
1. **CI/CD automates everything** - No more manual testing or building
2. **GitHub Actions is powerful and free** - Professional tool at no cost
3. **YAML is human-readable** - Easy to understand but spacing matters
4. **Green checkmarks show quality** - Professional repos always have CI
5. **Automation prevents errors** - Computers are more consistent than humans
6. **Workflows run on every push** - Immediate feedback on code quality
7. **Token scopes matter** - Different permissions for different operations

### What Success Looks Like:
- ✅ Green checkmark next to commits on GitHub
- ✅ CI Pipeline badge showing "passing" in README
- ✅ Automated checks running within seconds of pushing
- ✅ Professional-looking repository with active CI/CD
- ✅ Confidence that code is tested before anyone sees it

### Real-World Impact:
- This is exactly what professional DevOps engineers set up
- Companies use CI/CD to deploy code hundreds of times per day
- Automation reduces deployment time from hours to minutes
- Catches bugs before they reach production servers
- Enables teams to move faster with more confidence

### Tomorrow's Plan:
- Extend CI pipeline with more checks
- Add automated Docker Hub image pushing
- Set up secrets for secure credential management
- Create deployment workflow (CD part!)
- Deploy to cloud platform automatically