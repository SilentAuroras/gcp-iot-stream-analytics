# GCP IoT Stream Analytics
Learning project to stream sensor data to GCP and perform analysis on the data.

This project is purposefully obtuse, it aims to learn several protocols and backend stacks.
- Multiple I2C devices
- GCP instead of AWS IoT

List of devices and protocols used:
- Arduino R4 Wi-Fi - I2C controller / GCP uploader (In progress)
- Arduino Giga R1 Wi-Fi - I2C target / sensor (In progress)
- STM32 — I2C target / sensor (TODO)

Data flow:
- (TODO SCREENSHOT)

# Project Structure
- `analysis/`: Contains a Jupyter notebook for analyzing sensor data in BigQuery
- `documentation/`: Includes diagrams and screenshots
- `endpoints/`: Code for device endpoints (Arduino, STM32) that interact with sensors and upload data
- `ingest/`: Contains terraform and GCP cloud run functions for ingesting sensor data into GCP BigQuery

# Deployment Steps
- Set up a GCP project and enable the necessary APIs
  - ```gcloud auth application-default login```
  - ```gcloud config set project <project-id>```
- Create a terraform.tfvars file with the following variables set:
  - `project-id`: Your GCP project ID
  - `region`: The GCP region for deployment
  - `api-key`: Random API key for authenticating endpoints
- Deploy the `gcp-backend` using Terraform
  - ```terraform init```
  - ```terraform plan```
  - ```terraform apply```
- Configure the devices to send data to GCP
  - Deploy the Arduino and STM32 code to the respective devices
- Upload and load the Jupyter notebook for analysis into BigQuery