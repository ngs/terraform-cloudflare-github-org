# terraform-cloudflare-github-org

CloudFlare Terraform module for setup GitHub [Organization Domain Verification].

## Usage

```hcl
resource "cloudflare_zone" "example" {
  zone = "example.com"
}

module "github-org" {
  zone_id  = cloudflare_zone.example.id
	source   = "ngs/github-org/cloudflare"
	name     = "@"
	org      = "instance0"
  code     = "0123456789"
}
```

## Inputs

| Name       | Description                                     |
| ---------- | ----------------------------------------------- |
| `domain`   | The DNS zone_id to add the record to            |
| `name`     | The name of the record. Use `@` for root domain |
| `code`     | Verification code                               |
| `username` | GitHub organization name                        |

## Author

[Atushi Nagase]

## License

MIT. See [LICENSE]

[atushi nagase]: https://ngs.io/
[license]: LICENSE
[organization domain verification]: https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/verifying-your-organizations-domain
