terraform {
  required_providers {
    azurerm = {
       source = "hashicorp/azurerm"
       version = "4.17.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "9ec05618-8b8b-4a51-a5c3-22e3fbb0dddb"
  client_id = "ea729ccf-e7a8-4e48-b161-72514c0f6875"
  client_secret ="P~f8Q~4tVt04t7Zq~jTzo4tIWSvof8gTw2aUTbWF"
  tenant_id = "4cde2737-8a7c-435a-babe-cbf48917b024"
  features {}
}

data "azurerm_resource_group" "rg" {
  name = "Srini_RG"
}

resource "azurerm_virtual_network" "vnet" {
  name = "myvnet1"
  location = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  address_space = ["10.0.0.0/16"]
}
