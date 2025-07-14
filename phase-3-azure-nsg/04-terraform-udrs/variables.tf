### 04-terraform-udrs

### variables.tf

```hcl
variable "resource_group_name"      { type = string }
variable "route_table_name"         { type = string }
variable "location"                 { type = string }
variable "route_name"               { type = string }
variable "address_prefix"           { type = string }
variable "next_hop_ip"              { type = string }
```