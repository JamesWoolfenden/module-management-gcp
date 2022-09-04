terraform {
  required_providers {
    github = {
      version = "4.31.0"
      source  = "integrations/github"
    }
  }
  required_version = ">=0.14.8"
}
