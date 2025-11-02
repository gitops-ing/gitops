terraform {
  backend "s3" {
    bucket = "k1-state-store-mgmt-k1-gitops-ing-9hd3jt"
    key    = "terraform/vault/terraform.tfstate"

    region  = "us-east-2"
    encrypt = true
  }
  required_providers {
    vault = {
      source = "hashicorp/vault"
    }
  }
}

provider "vault" {
  skip_tls_verify = "true"
}
