### 05-terraform-firewall

### variables.tf

```hcl
variable "resource_group_name"     { type = string }
variable "firewall_name"           { type = string }
variable "location"                { type = string }
variable "sku"                     { type = string, default = "AZFW_VNet"  }
variable "firewall_subnet_id"      { type = string }
variable "public_ip_id"            { type = string }
```