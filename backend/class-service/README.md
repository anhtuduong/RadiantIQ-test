# Class service

This directory is about RadiantIQ's `class service`. It provides the starting point and workflow for building microservices-based application.

## Directory structure

```
class-service/
├── .github/            # GitHub Actions workflows
│   └── workflows/      # CI/CD configuration files
│       └── ci.yml      # Example: CI workflow
├── api/                # API definition and documentation
│   └── openapi.yaml    # OpenAPI 3.0 specification
├── docs/               # Documentations
├── src/                # Source code
│   ├── controllers/    # Controllers for handling requests
│   ├── models/         # Mongoose models for data schema
│   ├── routes/         # Express.js routes
│   └── index.js        # Entry point of the service
├── tests/              # Tests
├── .dockerignore       
├── .gitignore
├── build.sh            # Build the image
├── clean.sh            # Remove the image 
├── docker-compose.yml  # Docker running configuration
├── Dockerfile          # Dockerfile for containerization
├── package-lock.json   # Representation of a dependency tree (auto-generated)
├── package.json        # Node.js dependencies
└── README.md
```

## Develop the service

### Install dependencies

1. Install `nodejs`: https://nodejs.org/en/download/package-manager/

2. Check if `Express.js` is installed by investigating `package.json`:
```json
"dependencies": {
    "express": "^4.19.2"
  }
```

3. Sync the installation:
```
npm install
```

### Run the service

The entry point of the service is `src/index.js`. We can run the service with this command:
```
node src/index.js
```

In practice we should specify a "start" command in `package.json`:
```json
"scripts": {
    "test": "echo \"Error: no test specified\" && exit 1",
    "start": "node src/index.js"
  },
```
So we can run by calling this command:
```
npm start
```
---

## Containerize the service

### Docker time!

1. Install `docker`: https://docs.docker.com/engine/install/ \
2. Make sure `docker-compose` is also installed!
3. Write `Dockerfile`

### Build the image

Build the image from the `Dockerfile`:

```
./build.sh
```

Note: if you get permisson issue when running the script. Try changing the mode:
```
chmod 770 build.sh
```

### Run the container

#### 1. Run independently
This service can run independently by this command in this service directory:

```
docker compose up -d
```
Go to http://localhost:3003/ to check the status! (The port specified in docker-compose.yml)

To stop the service:
```
docker compose down
```

Remember to clean the image:
```
./clean.sh
```


#### 2. Run all RadiantIQ microservices
This service is one of many microservices running in RadiantIQ root. Register this service in `root/run-all.sh` and run in root directory:
```
./run-all.sh
```

To stop and clean:
```
./stop-and-clean.sh
```

---

![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![NodeJS](https://img.shields.io/badge/node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white)
![Express.js](https://img.shields.io/badge/express.js-%23404d59.svg?style=for-the-badge&logo=express&logoColor=%2361DAFB)

> Maintainer: Anh Tu Duong (anhtu.duong@studenti.unitn.it)