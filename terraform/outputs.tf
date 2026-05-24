output "resource_group_name" {
  description = "Name of the created Azure resource group."
  value       = azurerm_resource_group.main.name
}

output "web_app_name" {
  description = "Name of the Azure Linux Web App."
  value       = azurerm_linux_web_app.main.name
}

output "web_app_url" {
  description = "Default URL of the Azure Web App."
  value       = "https://${azurerm_linux_web_app.main.default_hostname}"
}

output "app_service_plan_name" {
  description = "Name of the App Service Plan."
  value       = azurerm_service_plan.main.name
}

output "key_vault_name" {
  description = "Name of the Azure Key Vault."
  value       = azurerm_key_vault.main.name
}

output "key_vault_secret_name" {
  description = "Name of the Key Vault secret used by the app."
  value       = azurerm_key_vault_secret.project_message.name
}

output "managed_identity_name" {
  description = "Name of the user-assigned managed identity."
  value       = azurerm_user_assigned_identity.web_app_identity.name
}

output "managed_identity_principal_id" {
  description = "Principal ID of the user-assigned managed identity."
  value       = azurerm_user_assigned_identity.web_app_identity.principal_id
}

output "application_insights_name" {
  description = "Name of the Application Insights resource."
  value       = azurerm_application_insights.main.name
}

output "log_analytics_workspace_name" {
  description = "Name of the Log Analytics Workspace."
  value       = azurerm_log_analytics_workspace.main.name
}
