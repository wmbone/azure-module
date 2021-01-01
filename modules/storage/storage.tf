resource "azurerm_storage_account" "storage_account" 
{
  name                = "docker${random_id.storage_account_name.hex}"
  resource_group_name = "azurerm_resource_group.resource_group.name"
  location            = "var.resource_group_location"
  account_type        = "var.config["storage_account_type"]"

  tags {
    Source = "Azure Quickstarts for Terraform"
  }
}