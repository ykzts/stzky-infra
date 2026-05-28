
variable "zone_id" {
  description = "Cloudflare zone ID"
  type        = string
}

variable "root_endpoint" {
  description = "Apex and wildcard endpoint values for stzky.com"
  type = object({
    root_ipv4 = string
    root_ipv6 = string
  })
}

variable "uptime_fly_endpoint" {
  description = "fly.io endpoint values for uptime.stzky.com"
  type = object({
    ipv4 = string
    ipv6 = string
  })
}
