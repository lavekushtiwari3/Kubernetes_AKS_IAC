terraform {
    required_providers {
        azurerm = {
            source  = "hashicorp/azurerm"
            version = "4.29.0"
        }
    }
}

provider "azurerm" {  
  subscription_id = "5145bbb0-cdd8-407b-b7db-77190dc0d1c8"
  features {
      key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
}