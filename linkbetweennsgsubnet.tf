resource "azurerm_subnet_network_security_group_association" "tf-nsg-a" {
  subnet_id                 = azurerm_subnet.tf-subnet.id
  network_security_group_id = azurerm_network_security_group.tf-nsg.id
}
