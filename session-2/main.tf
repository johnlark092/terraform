# Terraform Virtual Training session 2 - main.tf

# Creates a service account in a project

# <Enter your new resource below here>


# Get the new service account email from the project
data "google_service_account" "training_service_account_email" {
  account_id = "my-gcp-sa-id"   # should be same as the training_service_account
  project    = "us-gcp-ame-con-dic-sbx-1"

  depends_on = [google_service_account.training_service_account]  # wait condition
}

# Non-authoritative update of the IAM policy to grant a role to a new member.
resource "google_project_iam_member" "bind_role" {
  project = "us-gcp-ame-con-dic-sbx-1"
  role    = "roles/compute.admin"
  member  = "serviceAccount:${data.google_service_account.training_service_account_email.email}"
}

output "service_account_email" {
  value = data.google_service_account.training_service_account_email.email
}
