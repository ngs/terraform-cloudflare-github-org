resource "cloudflare_zone" "example" {
  account = {
    id = "dummy-account-id"
  }
  name = "example.com"
}

module "test-github-org" {
  zone_id = cloudflare_zone.example.id
  source  = "../"
  name    = "@"
  org     = "instance0"
  code    = "0123456789"
}
