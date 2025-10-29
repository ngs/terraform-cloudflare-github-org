resource "cloudflare_dns_record" "txt-gsv" {
  zone_id = var.zone_id
  name    = "_github-challenge-${var.org}${var.name == "@" ? "" : ".${var.name}"}"
  content = var.code
  type    = "TXT"
  ttl     = 3600
}
