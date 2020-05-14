variable "zone_id" {
  description = "The DNS zone_id to add the record to"
  type = string
}

variable "name" {
  description = "The name of the record. Use `@` for root domain"
  type = string
}

variable "code" {
  description = "Verification code"
  type = string
}

variable "org" {
  description = "GitHub organization name"
  type = string
}
