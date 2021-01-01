# Terraform module for Azure VM scale set
https://docs.microsoft.com/en-us/azure/virtual-machine-scale-sets/overview

- Azure virtual machine scale sets let you create and manage a group of load balanced VMs. The number of VM instances can automatically increase or decrease in response to demand or a defined schedule. Scale sets provide high availability to your applications, and allow you to centrally manage, configure, and update a large number of VMs. With virtual machine scale sets, you can build large-scale services for areas such as compute, big data, and container workloads.

- This resource will replace existing 'azurerm_virtual_machine' resource in the long-term.
    https://github.com/terraform-providers/terraform-provider-azurerm/issues/2807