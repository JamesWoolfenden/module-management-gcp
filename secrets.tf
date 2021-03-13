resource "github_actions_secret" "AWS_KEY" {
  count           = length(var.repo)
  repository      = var.repo[count.index]["name"]
  secret_name     = "AWS_KEY"
  plaintext_value = var.AWS_KEY
}

variable "AWS_KEY" {
}

variable "AWS_ACCESS_KEY_ID" {
}

resource "github_actions_secret" "AWS_ACCESS_KEY_ID" {
  count           = length(var.repo)
  repository      = var.repo[count.index]["name"]
  secret_name     = "AWS_ACCESS_KEY_ID"
  plaintext_value = var.AWS_ACCESS_KEY_ID
}

variable "credentials_file" {
}

resource "github_actions_secret" "GOOGLE_CLOUD_KEYFILE_JSON" {
  count           = length(var.repo)
  repository      = var.repo[count.index]["name"]
  secret_name     = "GOOGLE_CLOUD_KEYFILE_JSON"
  plaintext_value = local.credentials
}
