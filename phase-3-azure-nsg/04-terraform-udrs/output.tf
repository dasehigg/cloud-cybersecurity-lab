### 04-terraform-udrs

### outputs.tf

```hcl
output "route_table_id" {
    value = azurerm_route_table.this.id
}
```