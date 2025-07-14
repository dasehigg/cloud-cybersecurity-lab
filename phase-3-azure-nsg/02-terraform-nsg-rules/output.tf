### 02-terraform-nsg-rules

### outputs.tf

```hcl
output "nsg_id" {
    value = azurerm_network_security_group.this.id
}
```