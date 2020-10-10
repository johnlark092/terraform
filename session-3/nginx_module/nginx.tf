# Terraform Virtual Training session 3 - nginx_module/main.tf


# Create VM that will start nginx service
resource "google_compute_instance" "nginx" {
  project      = var.project_id
  name         = var.name
  machine_type = "n1-standard-1"
  zone         = var.gcp_zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    subnetwork = var.subnet
  }
  

  service_account {
    scopes = ["cloud-platform"]
    email  = var.service_account_email
  }
}

# Create output for dynamically assigned IP
output "vm_internal_ip" {
  value = google_compute_instance.nginx.network_interface.0.network_ip 
}