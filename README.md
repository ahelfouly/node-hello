# Node Hello

Forked from [johnpapa/node-hello](https://github.com/johnpapa/node-hello), simple webserver to containerize and deploy via terraform

## Features

- Basic Node.js HTTP server
- CI/CD pipeline for linting and containerization
- Auto-deployment to Docker Hub
- Terraform code for local deployment

---

## Prerequisites

- Node.js ≥ 18 (or use Docker)
- [Docker](https://www.docker.com/)
- (Optional) [Terraform](https://www.terraform.io/) for local deployment
---

## Installation

```bash
git clone https://github.com/ahelfouly/node-hello.git
cd node-hello
npm install
npm start
```
---
## CI/CD
- Use the apporpriate values for `DOCKER_USERNAME` and `DOCKER_PASSWORD`
- Make sure to save the variables as secrets
- The file `lint.yml` defines worklow to lint the code
- The file `containerize.yml` defines workflow to build the container image, test connection over port 3000 and only then push to dockerhub.
- The containerization workflow will automatically trigger on successful validation of linting
- Both workflows defined can be triggered manually

---

## Running as container
```bash
git clone https://github.com/ahelfouly/node-hello.git
cd node-hello
docker build -t node-hello:latest .
docker run -d -p 8080:3000 nodehello:latest
```
