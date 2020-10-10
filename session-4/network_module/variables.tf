# Terraform Virtual Training session 3 - vars.tf (Illustrated)

// Shared variables
variable "project_id" {
  type        = string
  description = "Your GCP Project ID to provision resources"
  default     = "default-project"
}

// VPC variables
variable "vpc_name" {
  type        = string
  description = "The name of the VPC"
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "Whether or not to create default subnets"
  default     = "false"
}

// Subnet variables
variable "gcp_region" {
  type        = string
  description = "Region associated with subnet"
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet"
}

variable "ip_cidr_range" {
  type        = string
  description = "The CIDR range for the subnet"
  default     = "10.10.0.0/16"
}

// Firewall Rule variables
variable "firewall_name" {
  type        = string
  description = "The name of the firewall rule"
}

variable "firewall_ports" {
  type        = list
  description = "The ports to allow for the firewall rule"
  default     = ["80", "22"]
}

variable "firewall_protocol" {
  type        = string
  description = "Protocol to apply the firewall rule for"
  default     = "tcp"
}

variable "firewall_priority" {
  type        = string
  description = "Priority for the firewall rule. Lower priority number is evaluated first"
  default     = "900"
}

variable "firewall_source_ranges" {
  type        = list
  description = "IP CIDR range to apply the firewall rule to"
  default     = ["0.0.0.0/0"]
}
