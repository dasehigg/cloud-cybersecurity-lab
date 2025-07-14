### 02-terraform-nsg-rules

### variables.tf

```hcl
variable "resource_group_name"              { type = string }
variable "nsg_name"                         { type = string }
variable "location"                         { type = string }
variable "rule_name"                        { type = string }
variable "priority"                         { type = number }
variable "direction"                        { type = string, default = "Inbound" }
variable "access"                           { type = string, default = "Allow" }
variable "protocol"                         { type = string, default = "Tcp" }
variable "source_port_range                 { type = string, default = "*" }
variable "destination_port_range            { type = string, default = "*" }
variable "source_address_prefix             { type = string, default = "*" }
variable "destination_address_prefix        { type = string, default = "*" }
```