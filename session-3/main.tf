# Terraform Virtual Training session 3 - main.tf

//Instantiate modules here for networking module
module "networking_resources" {
    source                  = "./network_module"
    project_id              = var.project_id
    vpc_name                = var.vpc_name
    auto_create_subnetworks = var.auto_create_subnetworks
    gcp_region              = var.gcp_region
    subnet_name             = var.subnet_name
    ip_cidr_range           = var.ip_cidr_range
    firewall_name           = var.firewall_name
    firewall_ports          = var.firewall_ports
    firewall_protocol       = var.firewall_protocol
    firewall_priority       = var.firewall_priority
    firewall_source_ranges  = var.firewall_source_ranges
}

//Instantiate module here for SA module 
module "sa_resources" {
    source                  = "./sa_module"
    project_id              = var.project_id
    service_account_id      = var.service_account_id
    service_account_name    = var.service_account_name 
    service_account_desc    = var.service_account_desc
    role                    = var.role
    gcp_region              = var.gcp_region
}


//Instantiate modules here for nginx module 
module "nginx" {
    source                = 
    gcp_zone              = 
    project_id	          = 
    name                  =  
    image                 = 
    service_account_email =  module.sa_resources.service_account_email
    subnet                = 
}