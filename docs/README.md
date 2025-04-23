# Project Name: Local Indicators Pipeline
## ℹ️ Overview
The project prepares local indicators data for ingestion into BDUK systems (BigQuery).  See example data [here](https://explore-local-statistics.beta.ons.gov.uk/insights/datadownload.ods).
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