variable "name" {
  description = "The name which should be used for this Front Door Route. Valid values must begin with a letter or number, end with a letter or number and may only contain letters, numbers and hyphens with a maximum length of 90 characters. Changing this forces a new Front Door Route to be created."
  type        = string
}

variable "cdn_frontdoor_endpoint_id" {
  description = "The resource ID of the Front Door Endpoint where this Front Door Route should exist. Changing this forces a new Front Door Route to be created."
  type        = string
}

variable "cdn_frontdoor_origin_group_id" {
  description = "The resource ID of the Front Door Origin Group where this Front Door Route should be created."
  type        = string
}

variable "cdn_frontdoor_origin_ids" {
  description = "One or more Front Door Origin resource IDs that this Front Door Route will link to."
  type        = list(string)
}

variable "forwarding_protocol" {
  description = "The Protocol that will be use when forwarding traffic to backends. Possible values are HttpOnly, HttpsOnly or MatchRequest."
  type        = string
  default     = null
}

variable "patterns_to_match" {
  description = "The route patterns of the rule."
  type        = list(string)
  default     = ["/*"]
}
variable "supported_protocols" {
  description = "One or more Protocols supported by this Front Door Route. Possible values are Http or Https."
  type        = list(string)
  default     = ["HTTPS"]
}

variable "cdn_frontdoor_custom_domain_ids" {
  description = "The IDs of the Front Door Custom Domains which are associated with this Front Door Route."
  type        = list(string)

}

variable "enabled" {
  description = "Is this Front Door Route enabled?"
  type        = bool
  default     = true
}

variable "https_redirect_enabled" {
  description = " Automatically redirect HTTP traffic to HTTPS traffic? "
  type        = bool
  default     = true
}

variable "cdn_frontdoor_origin_path" {
  description = "A directory path on the Front Door Origin that can be used to retrieve content."
  type        = string
  default     = null
}

variable "link_to_default_domain" {
  description = "Should this Front Door Route be linked to the default endpoint?"
  default     = false
}

variable "cdn_frontdoor_rule_set_ids" {
  description = "A list of the Front Door Rule Set IDs which should be assigned to this Front Door Route."
  type        = list(string)
  default     = null
}

