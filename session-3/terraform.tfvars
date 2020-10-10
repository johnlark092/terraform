// Provider block
project_id              = "us-gcp-ame-con-dic-sbx-1"
gcp_region              = "us-west1"

// VPC 
//Fill in your unique VPC name
vpc_name                = "vpc-trenguyen"
auto_create_subnetworks = "false"

//Fill in your unique subnet name 
subnet_name             = "sn-trenguyen"
ip_cidr_range           = "10.10.0.0/16"


// Firewall Rule

//Create unique firewall name i.e allowIngress<YOUR_NAME>
firewall_name           = "fw-trenguyen"

firewall_ports          = ["80", "22"]
firewall_protocol       = "tcp"
firewall_priority       = "900"
firewall_source_ranges  = ["0.0.0.0/0"]

//Service Account
//Create unique name for service_account_id
service_account_id = "sa-trenguyen"
service_account_name = "Training Service Account"
service_account_desc = "Service Account for Nginx Instance"

// IAM Binding Resource
role = "roles/compute.admin"

// Nginx 
//Populate Nginx Variable definitions here
gcp_zone = "us-west1-a"