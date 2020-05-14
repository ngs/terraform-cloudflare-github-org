resource "cloudflare_record" "txt-gsv" {
  zone_id  = var.zone_id
  name     = "_github-challenge-${var.org}${var.name == "@" ? "" : ".${var.name}"}"
  value    = var.code
  type     = "TXT"
}
