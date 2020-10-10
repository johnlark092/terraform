# Terraform Virtual Training session 2 - main.tf

# Creates a service account in a project
# <Enter your new resource here>
resource "google_service_account" "training_service_account" {
  account_id   = var.service_account_id
  display_name = var.service_account_name
  description  = var.service_account_desc
  project      = var.project_id
}

# Get the new service account email from the project
data "google_service_account" "training_service_account_email" {
  account_id = var.service_account_id
  project    = var.project_id

  depends_on = [google_service_account.training_service_account]  # wait condition
}

# Non-authoritative update of the IAM policy to grant a role to a new member.
resource "google_project_iam_member" "bind_role" {
  project = var.project_id
  role    = var.role
  member  = "serviceAccount:${data.google_service_account.training_service_account_email.email}"
}

output "service_account_email" {
  value = data.google_service_account.training_service_account_email.email
}
