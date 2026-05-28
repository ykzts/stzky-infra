
# R2バケット: baserow-media
resource "cloudflare_r2_bucket" "baserow_media" {
  account_id    = var.cloudflare_account_id
  name          = "baserow-media"
  jurisdiction  = "default"
  storage_class = "Standard"
}

resource "cloudflare_r2_bucket_cors" "baserow_media" {
  account_id  = var.cloudflare_account_id
  bucket_name = cloudflare_r2_bucket.baserow_media.name
  rules = [{
    allowed = {
      headers = ["*"]
      methods = ["GET", "HEAD"]
      origins = ["https://base-media.stzky.com"]
    }
    expose_headers  = ["ETag", "cf-cache-status"]
    id              = "baserow-media-public-read"
    max_age_seconds = 3600
  }]
}

