# creating resource group for web application
resource "azurerm_resource_group" "food-rg" {
  name     = "terraform"
  location = "East US"
  tags = {
    environment = "dev"
  }
}
