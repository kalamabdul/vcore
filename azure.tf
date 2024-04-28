resource "vault_auth_backend" "example" {
  type = "azure"

  tune {
    max_lease_ttl      = "90000s"
    listing_visibility = "unauth"
  }
}