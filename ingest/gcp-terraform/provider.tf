provider "google" {
	region = var.region
	project = var.project-id
}

variable "region" {			// pulled from tfvars
	description = "GCP region to deploy resources in"
	type        = string
}

variable "project-id" {		// pulled from tfvars
	description = "GCP project ID to deploy resources in"
	type        = string
}