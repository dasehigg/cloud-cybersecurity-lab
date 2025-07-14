### 03-terraform-flow-logs

### variables.tf

```hcl
variable "resource_group_name"          { type = string }
variable "network_watcher_name"         { type = string }
variable "nsg_id"                       { type = string }
variable "log_analytics_workspace_id"   { type = string }
variable "retention_days"               { type = number, default = 30 }
```
