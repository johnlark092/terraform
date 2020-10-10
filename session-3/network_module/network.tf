# Terraform Virtual Training session 3 - network_module/main.tf

# Creates a vpc in project
resource "google_compute_network" "network" {
  project                         = var.project_id
  name                            = var.vpc_name
  auto_create_subnetworks         = var.auto_create_subnetworks
}

# Creates a subnet in project
resource "google_compute_subnetwork" "subnet" {
  project                  = var.project_id
  network                  = google_compute_network.network.self_link
  region                   = var.gcp_region
  name                     = var.subnet_name
  ip_cidr_range            = var.ip_cidr_range
}

# Create a FW rule to allow traffic to subnet
resource "google_compute_firewall" "ingress_firewall" {
  name    = var.firewall_name
  network = google_compute_network.network.self_link
  project = var.project_id

  allow {
    ports    = var.firewall_ports
    protocol = var.firewall_protocol
  }

  priority                = var.firewall_priority
  source_ranges           = var.firewall_source_ranges
}
