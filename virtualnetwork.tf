
resource "azurerm_virtual_network" "food-vnet" {
  name                = "food-vnet"
  resource_group_name = azurerm_resource_group.food-rg.name
  location            = azurerm_resource_group.food-rg.location
  address_space       = ["10.0.0.0/16"]

  tags = {
    environment = "dev"
  }
}

