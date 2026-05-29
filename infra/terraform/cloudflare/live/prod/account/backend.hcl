# Cloudflare R2 backend for Terraform state

bucket = "stzky-tfstate"
key    = "cloudflare/prod/account/terraform.tfstate"
region = "auto"

skip_credentials_validation     = true
skip_region_validation          = true
skip_requesting_account_id      = true
use_path_style                  = true
use_lockfile                    = true

