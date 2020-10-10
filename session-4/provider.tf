
provider "google" {
  project     = var.project_id  # Your GCP Project ID
  region      = var.gcp_region  # The GCP Region you prefer
  credentials = file("../gcp-credentials.json") # PATH to your Service Account Credentials JSON file
  # version    = "2.4.0"         # Or something like "> 2.0.0" or "<= 2.0.0" (Illustrated)
}

# Terraform and provider versioning (Illustrated for explanation)
/*
terraform {
  required_version = "0.12.18"

  required_providers {
    google = "~> 2.0"
  }
}*/
