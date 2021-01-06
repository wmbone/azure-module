 
# Create a virtual network within the resource group
resource "azurerm_virtual_network" "dev" {
  name                = "${var.name}_azure_vnet"
  address_space       = ["192.168.10.0/20"]
  location            = var.location
  resource_group_name = var.resource_group_name

  subnet {
    name           = "subnet1"
    address_prefix = "192.168.10.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "192.168.11.0/24"
  }

  subnet {
    name           = "subnet3"
    address_prefix = "192.168.12.0/24"
  }
}