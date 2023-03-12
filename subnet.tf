resource "azurerm_subnet" "food-subnet" {
  name                 = "food-subnet"
  resource_group_name  = azurerm_resource_group.food-rg.name
  virtual_network_name = azurerm_virtual_network.food-vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}
