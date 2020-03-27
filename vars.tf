# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

variable "subscription_id" {
  description = "The Azure subscription ID"
  default = "6906f1b4-5e2d-4acf-bde6-db6d729ea826"
}

variable "tenant_id" {
  description = "The Azure tenant ID"
  default = "53a8b0d9-d900-48cc-9d7e-5935dc8d5b17"
}

variable "client_id" {
  description = "The Azure client ID"
  default = "c7b6d162-f109-4ec9-863c-34141332f98d"
}

variable "secret_access_key" {
  description = "The Azure secret access key"
  default = "1a2f9dce-f637-4699-a1ed-5653a0bf0e2c"
}

variable "resource_group_name" {
  description = "The name of the Azure resource group consul will be deployed into. This RG should already exist"
  default = "consul"
}

variable "storage_account_name" {
  description = "The name of an Azure Storage Account. This SA should already exist"
  default = "myconsulstoacc"
}

variable "image_uri" {
  description = "The URI to the Azure image that should be deployed to the consul cluster."
  default = "consul-ubuntu-2020-03-25-040954"
}

variable "key_data" {
  description = "The SSH public key that will be added to SSH authorized_users on the consul instances"
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDE3IrXaVKtn5f9SBbgsvG4eliLF1iB/l4OdoTVgNTFUWkxeEK8BbwNfSNrlSpgfsT7sJJo7DdutvdAmqNrLYbC31/SbB5DEGrMpqa56nm007sc2iouEadlJNbH3PdRcrYpwkpTjm9lNqWfaihlD8kRQogg8KjZviOFrqGRpuHJHMFT4x2tByksrujtqEScDepkuZ9ztAPKJgj0Lym5DTaBMOAB3WckfGfRXKZUP2AFeo/JXcW4SfPVqYsy7UhA2YUuaxuB9xkhPYJVzqbQ3vXSUz/35GzeLrnEEMqcH2hry/CKjQx7aTr2fxJHujCgWxi8uxAkEszXeTwdDzdbWoOL"
}

variable "allowed_inbound_cidr_blocks" {
  description = "A list of CIDR-formatted IP address ranges from which the Azure Instances will allow connections to Consul"
  type        = "list"
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------
variable "location" {
  description = "The Azure region the consul cluster will be deployed in"
  default = "Japan East"
}

variable "allowed_ssh_cidr_blocks" {
  description = "A list of CIDR-formatted IP address ranges from which the Azure Instances will allow SSH connections"
  type        = "list"
  default     = ["103.136.153.92/32"]
}

variable "address_space" {
  description = "The supernet for the resources that will be created"
  default = "10.0.0.0/16"
}

variable "subnet_address" {
  description = "The subnet that consul resources will be deployed into"
  default = "10.0.10.0/24"
}

variable "cluster_name" {
  description = "What to name the Consul cluster and all of its associated resources"
  default = "consul-cluster-example"
}

variable "instance_size" {
  description = "The instance size for the servers"
  default = "Standard_A0"
}

variable "num_servers" {
  description = "The number of Consul server nodes to deploy. We strongly recommend using 3 or 5."
  default = 5
}

variable "num_clients" {
  description = "The number of Consul client nodes to deploy. You typically run the Consul client alongside your apps, so set this value to however many Instances make sense for your app code."
  default = 3
}

variable "cluster_tag_key" {
  description = "The tag the Azure Instances will look for to automatically discover each other and form a cluster."
  default = "consul-servers"
}
