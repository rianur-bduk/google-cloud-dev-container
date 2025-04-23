# Project Name: Local Indicators Pipeline
## ℹ️ Overview
Sets up dev container with gcloud and python installed.
## Installation
### Using dockerfile
- ```` docker build -t gcloud-image .````
- ```` docker run -it --name gcloud-container -d -v //$(pwd)//src:/code/src -v //$(pwd)//data:/code/data -v //$(pwd)//requirements.txt:/code/requirements.txt gcloud-image````
#### To stop docker container and remove it
- ```` docker stop gcloud-container && docker rm gcloud-container````

### Using docker compose
- ```` docker compose up --build````
#### To stop docker container and remove it
- ```` docker compose down````
