# Terraform Virtual Training session 2 - vars.tf (Illustrated)

// Provider block
variable "project_id" {
  type        = string
  description = "Your GCP Project ID to provision resources"
  default     = "us-gcp-ame-con-dic-sbx-1"
}

variable "gcp_region" {
  type        = string
  description = "The GCP Region you prefer"
}

// Service Account Resource

# <Declare new variable here: service_account_id >


variable "service_account_desc" {
  type        = string
  description = "The Service Account for training session"
}

// IAM Binding Resource
variable "role" {
  type        = string
  description = <<-EOF
                "A IAM Role offering full control of all Compute Engine
                resources."
                EOF
}
