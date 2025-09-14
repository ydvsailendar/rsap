data "azurerm_resource_group" "rg" {
  name = "rg-${var.project}-${var.environment}"
}
