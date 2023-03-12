resource "azurerm_network_security_rule" "food-nsg-dev-rule" {
  name                        = "food-nsg-dev-rule"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.food-rg.name
  network_security_group_name = azurerm_network_security_group.food-nsg.name
}