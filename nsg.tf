resource "azurerm_network_security_group" "food-nsg" {
  name                = "food-nsg"
  location            = azurerm_resource_group.food-rg.location
  resource_group_name = azurerm_resource_group.food-rg.name

  tags = {
    environment = "dev"
  }
}
