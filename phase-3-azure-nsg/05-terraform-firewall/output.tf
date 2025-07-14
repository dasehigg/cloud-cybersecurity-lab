### 05-terraform-firewall

### output.tf

```hcl
output "firewall_id" {
    value = azurerm_firewall.this.id
}
```