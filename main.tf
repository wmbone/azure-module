###########################################################################
# Using Azure storage for tfstate
# storage_account_name: The name of the Azure Storage account.
# container_name: The name of the blob container.
# key: The name of the state store file to be created.
# access_key: The storage access key.
############################################################################
#terraform {
#    backend "azurerm" {
#        resource_group_name = "tfstate"
#        storage_account_name = "tfstate09762"
#        container_name = "tfstate"
#        key = "terraform.tfstate"
#    }
#}
#############################################################################
# PROVIDERS
#############################################################################
#

provider "azurerm" {
  version = "~>2.0"
  features {}
    // resource_group_name = "dev"
    // location = "australiasoutheast"
    client_certificate_path = var.azure_client_certificate_path
    client_certificate_password = var.azure_client_certificate_password
    // templatefile("../template/azure.tmpl",local.azure_config)
    // client_certificate_path =
    subscription_id = var.azure_subscription_id
    client_id = var.azure_client_id
    tenant_id = var.azure_tenant_id
  
}

#############################################################################
# RESOURCES Azurerm_resource_group has two arguments: name and location
#############################################################################
resource "azurerm_resource_group" "rg" {
  name = "config.resource_group_name"
  location = var.location
}
resource "local_file" "azure_config" {
    content = local.azure_config
    filename = "local_template.out"
}

##########
# modules
##########


module "vnet" {
  source = " modules/vnet"
  version = "~>2.0"
  cidr

  tags = var.vpc_tags 
}

module "vm" {
  source = " modules/virtual-network"
  version = "~>2.0 "

  name = prefix

  tags = var.vm_tags
}
