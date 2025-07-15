### 01-terraform-log-analytics

### variables.tf


variable "resource_group_name" { type = string }
variable "workspace_name" { type = string }
variable "location" { type = string }
variable "sku" {
  type    = string
  default = "PerGB2018"
}
variable "retention_in_days" {
  type    = number
  default = 30
}

