provider "azurerm" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  version = "=2.4.0"

  subscription_id = "aae619e7-a107-4bcd-8a32-c7cf33682d8c"
  client_id       = "df0deab2-8ac1-483c-a964-01bb037c55e2"
  client_secret   = "fef7eec2-c164-49f7-89c4-101f7811c2b8"
  tenant_id       = "540b6ff2-60a7-4a60-a588-34f16674bf21"

  features {}
}

resource "azurerm_resource_group" "RGMonoVM" {
  name     = "RGMonoVM"
  location = "West Europe"
}
resource "azurerm_virtual_network" "RGMonoVM_network" {
	  name                = "RGMonoVM_network"
	  resource_group_name=  "azurerm_resource_group.RGMonoVM.name"
	  location            = "azurerm_resource_group.RGMonoVM.location"
	  address_space       = ["192.168.0.0/16"]
    }
