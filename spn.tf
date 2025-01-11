# resource "azuread_application" "aro-app-1" {
#   display_name = "aro-app-1"
#   owners       = ["97b509a9-b4dc-4fc9-9748-dd62dea3278a"]
# }

# resource "azuread_service_principal" "aro-spn-1" {
#   client_id = azuread_application.aro-app-1.client_id
#   owners    = ["97b509a9-b4dc-4fc9-9748-dd62dea3278a"]
# }

# resource "azuread_service_principal_password" "aro-spn-pass-1" {
#   service_principal_id = azuread_service_principal.aro-spn-1.id
# }

# resource "azurerm_role_assignment" "aro-role-assignment-1" {
#   scope                = azurerm_virtual_network.aro-vnet-1.id
#   role_definition_name = "Network Contributor"
#   principal_id         = azuread_service_principal.aro-spn-1.object_id
# }
