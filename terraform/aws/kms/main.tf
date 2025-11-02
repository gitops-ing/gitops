resource "aws_kms_key" "vault_unseal" {
  description             = "Vault unseal key"
  deletion_window_in_days = 7

  tags = {
    Name = "mgmt-k1-gitops-ing"
  }
}

resource "aws_kms_alias" "vault_unseal" {
  name          = "alias/vault_mgmt-k1-gitops-ing"
  target_key_id = aws_kms_key.vault_unseal.key_id
}

output "vault_unseal_kms_key" {
  value = aws_kms_key.vault_unseal.key_id
}
