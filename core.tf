resource "vault_auth_backend" "approle" {
  type = "approle"
}

resource "vault_approle_auth_backend_role" "example" {
  backend        = vault_auth_backend.approle.path
  role_name      = "agent"
  token_policies = ["agent"]
  secret_id_ttl  = 3000
  token_num_uses = 123
  token_ttl  = 25
  token_max_ttl = 50
  secret_id_num_uses = 0
}


resource "vault_auth_backend" "example" {
  type = "github"

  tune {
    max_lease_ttl      = "90000s"
    listing_visibility = "unauth"
  }
}