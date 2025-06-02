#RG creation

module "Dev_rg" {
  source  = "../../Modules/Resource_group"
  rg_map  = var.rgs
}

# Vnet creation
module "Dev_vnet" {
  depends_on = [ module.Dev_rg ]
  source  = "../../Modules/Vnet"
  vnet_map = var.vnets 
  snet_map = var.snets
}

# aks creation
module "aks" {
  depends_on = [ module.Dev_vnet ]
  source  = "../../Modules/Aks"
  aks_map = var.akss
}