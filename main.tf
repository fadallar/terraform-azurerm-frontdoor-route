resource "azurerm_cdn_frontdoor_route" "this" {
  name                          = var.name
  cdn_frontdoor_endpoint_id     = var.cdn_frontdoor_endpoint_id
  cdn_frontdoor_origin_group_id = var.cdn_frontdoor_origin_group_id
  cdn_frontdoor_origin_ids      = var.cdn_frontdoor_origin_ids
  cdn_frontdoor_rule_set_ids    = var.cdn_frontdoor_rule_set_ids
  enabled                       = var.enabled

  forwarding_protocol    = var.forwarding_protocol
  https_redirect_enabled = var.https_redirect_enabled
  patterns_to_match      = var.patterns_to_match
  supported_protocols    = var.supported_protocols

  cdn_frontdoor_custom_domain_ids = var.cdn_frontdoor_custom_domain_ids
  link_to_default_domain          = var.link_to_default_domain
  cdn_frontdoor_origin_path       = var.cdn_frontdoor_origin_path

  #dynamic "cache" {
  #  for_each = var.cache_parameters != null ? var.cache_parameters : []
  #  content {
  #    query_string_caching_behavior = each.value.query_string_caching_behavior
  #    query_strings                 = each.value.query_strings
  #    compression_enabled           = each.value.compression_enabled
  #    content_types_to_compress     = each.value.content_types_to_compress
  #  }
  #}
}

#resource "azurerm_cdn_frontdoor_custom_domain_association" "contoso" {
#  cdn_frontdoor_custom_domain_id = azurerm_cdn_frontdoor_custom_domain.contoso.id
#  cdn_frontdoor_route_ids        = [azurerm_cdn_frontdoor_route.example.id]
#}