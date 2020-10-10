# Terraform Virtual Training session 2 - terraform.tfvars (Illustrated)

// Provider block
project_id = "us-gcp-ame-con-dic-sbx-1"    # "us-gcp-ame-con-dic-sbx-1"
gcp_region = "us-west1"

// Service Account Resource

# <Define new variable here>
service_account_name = "Training Service Account"
service_account_desc = "Your GCP Project ID to provision resources"

// IAM Binding Resource
role = "roles/compute.admin"
