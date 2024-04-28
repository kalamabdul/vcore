resource "vault_mount" "kvv2" {
  path        = "kvv2"
  type        = "kv"
  options     = { version = "2" }
  description = "KV Version 2 secret engine mount"
}

resource "vault_mount" "kvv2b234" {
  path        = "kvv2b234"
  type        = "kv"
  options     = { version = "2" }
  description = "KV Version 2 secret engine mount"
}