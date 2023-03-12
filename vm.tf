resource "azurerm_linux_virtual_machine" "food-vm" {
  name                  = "food-vm"
  resource_group_name   = azurerm_resource_group.food-rg.name
  location              = azurerm_resource_group.food-rg.location
  size                  = "Standard_F2"
  admin_username        = "adminuser"
  custom_data           = filebase64("web.sh")
  network_interface_ids = [azurerm_network_interface.food-nic.id]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}
