/*
  data "azurerm_subscription" "current" {
}
*/

resource "azurerm_management_group" "managementgroup_parent" {
  display_name = var.managementgroup
/* If you wish to use Subscription ID Mapping with Management Groups
  subscription_ids = [
    data.azurerm_subscription.current.subscription_id,
  ] 
*/
}

resource "azurerm_management_group" "managementgroup_childA0" {
  display_name               = var.childgroupA0
  parent_management_group_id = azurerm_management_group.managementgroup_parent.id
  }

resource "azurerm_management_group" "managementgroup_childB0" {
  display_name               = var.childgroupB0
  parent_management_group_id = azurerm_management_group.managementgroup_parent.id
  }

resource "azurerm_management_group" "managementgroup_childA1" {
  display_name               = var.childgroupA1
  parent_management_group_id = azurerm_management_group.managementgroup_childA0.id
  }

resource "azurerm_management_group" "managementgroup_childA2" {
  display_name               = var.childgroupA2
  parent_management_group_id = azurerm_management_group.managementgroup_childA0.id
  }

resource "azurerm_management_group" "managementgroup_childA3" {
  display_name               = var.childgroupA3
  parent_management_group_id = azurerm_management_group.managementgroup_childA0.id
  }

resource "azurerm_management_group" "managementgroup_childB1" {
  display_name               = var.childgroupB1
  parent_management_group_id = azurerm_management_group.managementgroup_childB0.id
  }

resource "azurerm_management_group" "managementgroup_childB2" {
  display_name               = var.childgroupB2
  parent_management_group_id = azurerm_management_group.managementgroup_childB0.id
  }

resource "azurerm_management_group" "managementgroup_childB3" {
  display_name               = var.childgroupB3
  parent_management_group_id = azurerm_management_group.managementgroup_childB0.id
  }

resource "azurerm_management_group" "managementgroup_childC1" {
  display_name               = var.childgroupC1
  parent_management_group_id = azurerm_management_group.managementgroup_childB2.id
  }

