# Create self link output for other modules
output "subnet_self_link" {
    value = google_compute_subnetwork.subnet.self_link
}



