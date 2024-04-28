terraform {
  required_providers {
    vault = {
      source = "hashicorp/vault"
    
    }
  }
}

provider "vault" {
  # Configuration options
  address = "https://vault-public-vault-22deb760.8ee49bbe.z1.hashicorp.cloud:8200"
  token = var.token
  max_lease_ttl_seconds = "180000"
}

variable "token" {
  
}
