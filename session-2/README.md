# Session 2

Terraform live training session 2 will focus on:
- Google Providers
- Terraform Resources
- Google terraform resource "google_service_account"  
- Google terraform resource "google_project_iam_member"
- Terraform data resources
- Google terraform data resource "google_service_account"
- Terraform variables

## Helper snippets:
- Provider block
`provider "google" {
  project     =  "us-gcp-ame-con-dic-sbx-1"
  region      = "us-east1"
  }`

- Resource block
`resource "google_service_account" "training_service_account" {
  account_id   = "my-gcp-sa-id"   #Enter a unique name
  display_name = "Training Service Account"
  description  = "A Service Account for training session"
  project      = "us-gcp-ame-con-dic-sbx-1"
}`

 - Declare variable
`variable "service_account_id" {
  type        = string
  description = "Your GCP service account unique ID"
}`

 - Define variable
 `service_account_id = "my_gcp_sa_id"`

## Script:
 - (Hands-on) Create three files namely - main.tf, provider.tf, terraform.tfvars, variables.tf
 - (Verbal)   Whats a Provider and why do we need it?
 - (Hands-on) Walk through by live coding of provider block in providers.tf
 - (Hands-on) Run terraform init
 - (Verbal)   What does terraform init do? ‘initializes’ Terraform and gets it ready to create
                resources. Show the ".terraform" folder and explain the terraform provider binaries
 - (Verbal)   Edit and add provider version argument
 - (Verbal)   What's a resource?
 - (Hands-on) Walk through by live coding for the main.tf first resource "google_service_account"
 - (Hands-on) Walk through by live coding for the variables.tf first resource "google_service_account"
 - (Verbal)   How do we know the details to add to the resource or variables?
 - (Verbal)   Explain each resource arguments along with the terraform document page, explaining
                each section in detail - ping link in chat
 - (Hands-on) Walk through by live coding for the main.tf second resource "google_project_iam_member"
 - (Verbal)   How do we know the detail of the resource yet to be provisioned? (service account email)
 - (Verbal)   Answers the above question by introducing the data resource
 - (Hands-on) Walk through by live coding for the main.tf data resource "google_service_account" and
                creating the argument reference to in the data resource in service account binding
 - (Hands-on) Run terraform plan         
 - (Verbal)   Explain the plan outputs
 - (Hands-on) Run terraform apply
 - (Verbal)   Explain the apply outputs and when complete show the provisioned resource on GCP Console
