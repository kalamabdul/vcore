resource "vault_mount" "kvv2" {
  path        = "kvv2"
  type        = "kv"
  options     = { version = "2" }
  description = "KV Version 2 secret engine mount"
}

resource "vault_mount" "kvv2a123" {
  path        = "kvv2a123"
  type        = "kv"
  options     = { version = "2" }
  description = "KV Version 2 secret engine mount"
}