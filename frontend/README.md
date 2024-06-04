# RadiantIQ Frontend

This directory is about RadiantIQ's `frontend`. It provides the starting point and workflow for building microservices-based application.

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 18.0.2.

## Develop the service

Note: to develop and test any microservice in standalone mode of RadiantIQ project, you need to run the commands in that service directory.

### Install dependencies

1. Install `nodejs`: https://nodejs.org/en/download/package-manager/

2. Sync the installation:
```
npm install
```

### Run the service

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The application will automatically reload if you change any of the source files.

In practice we should specify a "start" command in `package.json`:
```json
"scripts": {
    "ng": "ng",
    "start": "ng serve",
    "build": "ng build",
    "watch": "ng build --watch --configuration development",
    "test": "ng test"
},
```
So we can run by calling this command:
```
npm start
```

### Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

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

#### 1. Run independently (standalone mode)
This service can run independently by this command in this service directory:

```
docker compose up -d
```
Go to http://localhost:4200/ to check the status! (The port specified in docker-compose.yml)

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
![Angular](https://img.shields.io/badge/angular-%23DD0031.svg?style=for-the-badge&logo=angular&logoColor=white)

> Maintainer: Anh Tu Duong (anhtu.duong@studenti.unitn.it)
