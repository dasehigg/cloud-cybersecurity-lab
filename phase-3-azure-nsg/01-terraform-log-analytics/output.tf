### 01-terraform-log-analytics

### output.tf


output "workspace_id" {
  value = azurerm_log_analytics_workspace.this.id
}
output "workspace_customer_id" {
  value = azurerm_log_analytics_workspace.this.customer_id
}
