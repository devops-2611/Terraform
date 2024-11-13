variable "varsa" {}
resource "azurerm_storage_account" "name" {
  for_each = var.varsa
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.rgname
  account_tier= each.value.account_tier
  account_replication_type= each.value.account_replication_type

}