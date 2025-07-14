### 01-terraform-log-analytics

### variables.tf

```hcl
variables "resource_group_name"     { type = string }
variables "workspace_name"          { type = string }
variables "location"                { type = string }
variables "sku"                     { type = string, default = "PerGB2018" }
variables "retention_days"          { type = number, default = 30 }
```
