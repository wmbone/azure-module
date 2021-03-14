 
# Create a virtual network within the resource group
resource "azurerm_virtual_network" "dev" {
  name                = "${var.name}_azure_vnet"
  address_space       = [var.address_space[0]]
  location            = var.location
  resource_group_name = var.resource_group_name
  count = var.subnet_count > 0? var.subnet_count:0
  subnet {
    //count = var.subnet_count > 0? var.subnet_count:0
    name = "subnet${count.index}"
    address_prefix = cidrsubnet(var.address_space[0],4,count.index)

  }

}