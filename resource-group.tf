# creating resource group for web application
resource "azurerm_resource_group" "tf-rg" {
  name     = "terraform"
  location = "East US"
  tags = {
    environment = "dev"
  }
}
