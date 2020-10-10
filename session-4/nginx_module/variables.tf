// Provider block
variable "project_id" {
  type        = string
  description = "Your GCP Project ID to provision resources"
}

// Compute Instance variables
variable "gcp_zone" {
  type        = string
  description = "The GCP Zone you prefer"
}

variable "name" {
  type        = string
  description = "Name of the GCE instance"
}

variable "image" {
  type        = string
  description = "The OS Image you prefer"
  default     = "debian-9"
}

variable "subnet" {
  type        = string
  description = "Subnet self link to create instance in"
}

variable "service_account_email" {
  type        = string
  description = "Service account to bind to instance"
}
