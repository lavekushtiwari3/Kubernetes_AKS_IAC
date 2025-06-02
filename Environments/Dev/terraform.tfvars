rgs = {
    rg-01 = {
        name     = "rg-01"
        location = "central India"
    }   
 
}

vnets = {
    vnet-01 = {
       resource_group_name = "rg-01"
       location           = "central India"
       address_space      = "10.2.0.0/16"
       #dns_servers        = ["8.8.8.8", "8.8.4.4"]  
    }
    }

snets = {
  snet-01 = {
        name              = "snet-01"
        address_prefixes    = ["10.2.1.0/24"]
}
}

akss = {
    aks-01 = {
        location            = "central India"
        resource_group_name = "rg-01"
        dns_prefix          = "aks-01"
        default_node_pool  = {
            node_pool_name       = "nodepool1"
            node_count      = 2
            node_vm_size   = "Standard_DS2_v2"
            os_type   = "Linux"
            mode     = "System"
            network_plugin      = "azure"
            kubernetes_version  = "1.31.7"
            
        }
    }
}