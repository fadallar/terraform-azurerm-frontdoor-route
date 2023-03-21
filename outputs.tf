output "route_id" {
  description = "The ID of the Front Door Route"
  value       = azurerm_cdn_frontdoor_route.this.id
}
