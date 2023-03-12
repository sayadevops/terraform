resource "azurerm_public_ip" "food-nsg-pip" {
  name                = "food-nsg-pip"
  resource_group_name = azurerm_resource_group.food-rg.name
  location            = azurerm_resource_group.food-rg.location
  allocation_method   = "Dynamic"

  tags = {
    environment = "dev"
  }
}
