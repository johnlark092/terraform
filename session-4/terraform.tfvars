
// Provider block
project_id              = "us-gcp-ame-con-dic-sbx-1"
gcp_region              = "us-west1"

//Session 2 Service Account

//Fill in unique value for service account_id
service_account_id = UNIQUE VALUE HERE


service_account_name = "Training Service Account"
service_account_desc = "Your GCP Project ID to provision resources"
role = "roles/compute.admin"

// VPC 

//Fill in unique value for vpc name here
vpc_name                = UNIQUE VALUE HERE

auto_create_subnetworks = "false"

//Fill in unique value for subnet name
subnet_name             = UNIQUE VALUE HERE

ip_cidr_range           = "10.10.0.0/16"


// Firewall Rule

//Fill in unique value for firewall name
firewall_name           =  UNIQUE VALUE HERE

firewall_ports          = ["80", "22"]
firewall_protocol       = "tcp"
firewall_priority       = "900"
firewall_source_ranges  = ["0.0.0.0/0"]

// Nginx 
gcp_zone                = "us-west1-a"
//File in unique value for instance_name here
instance_name           = UNIQUE VALUE HERE

image                   = "space-invaders"
service_account_email   = "my-gcp-sa-id@us-gcp-ame-con-dic-sbx-1.iam.gserviceaccount.com"
