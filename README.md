# Node Hello

Forked from [johnpapa/node-hello](https://github.com/johnpapa/node-hello), simple webserver to containerize and deploy via terraform

## Features

- Basic Node.js HTTP server
- Integration with New Relic APM

---

## Prerequisites

- Node.js ≥ 18 (or use Docker)
- [Docker](https://www.docker.com/)
- [New Relic account](https://newrelic.com/) for monitoring
---

## Installation

```bash
git clone https://github.com/ahelfouly/node-hello.git
cd node-hello
export NEW_RELIC_LICENSE_KEY=your_new_relic_issued_license
npm install
npm start
```
---

## Running as container
```bash
git clone https://github.com/ahelfouly/node-hello.git
cd node-hello
export NEW_RELIC_LICENSE_KEY=your_new_relic_issued_license
docker build -t node-hello:newrelic .
docker run -d -p 8080:3000 -e NEW_RELIC_LICENSE_KEY nodehello:newrelic
```