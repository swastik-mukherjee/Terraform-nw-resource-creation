#Azure resource group

resource "azurerm_resource_group" "rgtf" {
  name     = "rg-via-tf"
  location = "East US"
}
