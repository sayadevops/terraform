resource "azurerm_network_interface" "food-nic" {
  name                = "food-nic"
  location            = azurerm_resource_group.food-rg.location
  resource_group_name = azurerm_resource_group.food-rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.food-subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.food-nsg-pip.id
  }

  tags = {
    environment = "dev"
  }
}
