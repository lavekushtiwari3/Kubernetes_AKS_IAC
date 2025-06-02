resource "azurerm_kubernetes_cluster" "k8s" {
  for_each = var.aks_map

  name                = "${each.key}-aks"
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  dns_prefix          = each.value.dns_prefix
  sku_tier            = "Standard"  

  default_node_pool {
    name       = each.value.default_node_pool.node_pool_name
    node_count = each.value.default_node_pool.node_count
    vm_size    = each.value.default_node_pool.node_vm_size
    # os_type    = each.value.default_node_pool.os_type
    # mode       = each.value.default_node_pool.mode
  }

 
  network_profile {
    network_plugin = each.value.default_node_pool.network_plugin
  }

  kubernetes_version = each.value.default_node_pool.kubernetes_version

  identity {
    type = "SystemAssigned"
  }
}
