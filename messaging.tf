resource "azurerm_eventhub_namespace" "ehns" {
  name                = "sa-${var.project}-ehns-${var.environment}"
  location            = var.location
  resource_group_name = resource.azurerm_resource_group.rg.name
  sku                 = "Standard"
  capacity            = 1
}

resource "azurerm_eventhub" "eh" {
  name              = "sa-${var.project}-eh-${var.environment}"
  namespace_id      = azurerm_eventhub_namespace.ehns.id
  partition_count   = 2
  message_retention = 1
}
