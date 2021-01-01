variable "config" {
  type = "map"

  default = {
    "namespace"                     = "docker"
    "vm_size"                       = "Standard_F1"
    "vm_image_publisher"            = "Canonical"
    "vm_image_offer"                = "UbuntuServer"
    "storage_account_type"          = "Standard_LRS"
    "network_address_prefix"        = "10.0.0.0/16"
    "network_subnet_prefix"         = "10.0.0.0/24"
    "network_public_ipaddress_type" = "Static"
  }
}
variable "ubuntu_os_value" {
    type = "map"

    default = {
        "18.04.5-LTS" = "18.04.5-LTS"
        "20.04-LTS" = "20.04-LTS"
    }
}
variable = "azure_config"{
    type = "map"

    defult = {
        resource_group_name = "dev"
        location = "australia"
        client_certificate_path = var.azure_client_certificate_path
        subscription_id = var.azure_subscription_id
        client_id = var.azure_client_id
        tenant_id = var.azure_tenant_id
    }
}