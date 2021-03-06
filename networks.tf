module "vnet" {
  source = "./modules/vnet"
  name = var.vnet_name
  location = var.location
  tags = var.vnet_tags
  resource_group_name = var.resource_group_name
  subnet_count = var.vnet_subnet_count
  address_space = var.vnet_address_space

}