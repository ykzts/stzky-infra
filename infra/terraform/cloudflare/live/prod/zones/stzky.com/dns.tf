resource "cloudflare_dns_record" "a_wildcard_root_ipv4" {
  zone_id = var.zone_id
  name    = "*.stzky.com"
  type    = "A"
  ttl     = 1
  proxied = false
  content = var.root_endpoint.root_ipv4
}

resource "cloudflare_dns_record" "a_root_ipv4" {
  zone_id = var.zone_id
  name    = "stzky.com"
  type    = "A"
  ttl     = 1
  proxied = false
  content = var.root_endpoint.root_ipv4
}

resource "cloudflare_dns_record" "a_uptime_ipv4" {
  zone_id = var.zone_id
  name    = "uptime.stzky.com"
  type    = "A"
  ttl     = 1
  proxied = true
  content = var.uptime_fly_endpoint.ipv4
}

resource "cloudflare_dns_record" "aaaa_wildcard_root_ipv6" {
  zone_id = var.zone_id
  name    = "*.stzky.com"
  type    = "AAAA"
  ttl     = 1
  proxied = false
  content = var.root_endpoint.root_ipv6
}

resource "cloudflare_dns_record" "aaaa_root_ipv6" {
  zone_id = var.zone_id
  name    = "stzky.com"
  type    = "AAAA"
  ttl     = 1
  proxied = false
  content = var.root_endpoint.root_ipv6
}

resource "cloudflare_dns_record" "aaaa_uptime_ipv6" {
  zone_id = var.zone_id
  name    = "uptime.stzky.com"
  type    = "AAAA"
  ttl     = 1
  proxied = true
  content = var.uptime_fly_endpoint.ipv6
}


resource "cloudflare_dns_record" "caa_root_issue_letsencrypt" {
  zone_id = var.zone_id
  name    = "stzky.com"
  type    = "CAA"
  ttl     = 1
  proxied = false
  data = {
    flags = 0
    tag   = "issue"
    value = "letsencrypt.org"
  }
}

resource "cloudflare_dns_record" "cname_base_media_public_r2_dev" {
  zone_id = var.zone_id
  name    = "base-media.stzky.com"
  type    = "CNAME"
  ttl     = 1
  proxied = true
  content = "public.r2.dev"
  # settings = { flatten_cname = false } # flatten_cnameは必要に応じて有効化
}

resource "cloudflare_dns_record" "cname_status_to_uptime" {
  zone_id = var.zone_id
  name    = "status.stzky.com"
  type    = "CNAME"
  ttl     = 1
  proxied = true
  content = "uptime.stzky.com"
  # settings = { flatten_cname = false }
}

resource "cloudflare_dns_record" "https_wildcard_alpn_h3_h2" {
  zone_id = var.zone_id
  name    = "*.stzky.com"
  type    = "HTTPS"
  ttl     = 1
  proxied = false
  data = {
    priority = 1
    target   = "."
    value    = "alpn=\"h3,h2\""
  }
}

resource "cloudflare_dns_record" "https_root_alpn_h3_h2" {
  zone_id = var.zone_id
  name    = "stzky.com"
  type    = "HTTPS"
  ttl     = 1
  proxied = false
  data = {
    priority = 1
    target   = "."
    value    = "alpn=\"h3,h2\""
  }
}

resource "cloudflare_dns_record" "https_uptime_alpn_h2" {
  zone_id = var.zone_id
  name    = "uptime.stzky.com"
  type    = "HTTPS"
  ttl     = 1
  proxied = false
  data = {
    priority = 1
    target   = "."
    value    = "alpn=\"h2\""
  }
}

resource "cloudflare_dns_record" "mx_send_aws_ses" {
  zone_id  = var.zone_id
  name     = "send.stzky.com"
  type     = "MX"
  ttl      = 60
  proxied  = false
  content  = "feedback-smtp.ap-northeast-1.amazonses.com"
  priority = 10
}

resource "cloudflare_dns_record" "txt_dmarc_root" {
  zone_id = var.zone_id
  name    = "_dmarc.stzky.com"
  type    = "TXT"
  ttl     = 1
  proxied = false
  content = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s; rua=mailto:4499c9d737bc4f739ee6a43df904efd3@dmarc-reports.cloudflare.net;"
}

resource "cloudflare_dns_record" "txt_domainkey_wildcard" {
  zone_id = var.zone_id
  name    = "*._domainkey.stzky.com"
  type    = "TXT"
  ttl     = 1
  proxied = false
  content = "v=DKIM1; p="
}

resource "cloudflare_dns_record" "txt_domainkey_resend" {
  zone_id = var.zone_id
  name    = "resend._domainkey.stzky.com"
  type    = "TXT"
  ttl     = 1
  proxied = false
  content = "p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC+hv6/hQi8N+4G/4fUFkH+ImEae6MmQFOu4hvqq886gpLFtGEfJrCzfeT2q0a157bgZ+I+e0K6fNnX8VlJ/cWE0EWdEIhZnms/3qHo090ebMCrg2AkpZmT6JpHAQVMom7WazwR+lqCERlzQGxRQNJ6tY4EHiYqUt4zoBsigMlltwIDAQAB"
}

resource "cloudflare_dns_record" "txt_spf_send" {
  zone_id = var.zone_id
  name    = "send.stzky.com"
  type    = "TXT"
  ttl     = 60
  proxied = false
  content = "v=spf1 include:amazonses.com ~all"
}

resource "cloudflare_dns_record" "txt_spf_root_reject" {
  zone_id = var.zone_id
  name    = "stzky.com"
  type    = "TXT"
  ttl     = 1
  proxied = false
  content = "v=spf1 -all"
}
