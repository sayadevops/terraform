resource "azurerm_subnet_network_security_group_association" "food-nsg-a" {
  subnet_id                 = azurerm_subnet.food-subnet.id
  network_security_group_id = azurerm_network_security_group.food-nsg.id
}
