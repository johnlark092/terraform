provider "google" {
  project = "us-gcp-ame-con-dic-sbx-1" # Your GCP Project ID
  region  = "us-west1"                 # The GCP Region you prefer
  credentials = file("../gcp-credentials.json")
}

resource "google_service_account" "training_service_account" {
  account_id   = "my-gcp-sa-id"
  display_name = "Training Service Account"
  description  = "A Service Account for training session"
  project      = "us-gcp-ame-con-dic-sbx-1"
}
