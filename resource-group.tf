# creating a resource group for we application
resource "azurerm_resource_group" "tf-rg" {
  name     = "terraform"
  location = "East US"
}