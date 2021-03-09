# module-management-gcp

I manage a lot of Terraform modules, this Controls GCP modules, and means I can
update files, setting/properties and secrets in one go.

## Add existing

```terraform
tf import github_repository.repositories[3] terraform-gcp-activemq
```

GOOGLE_CLOUD_KEYFILE_JSON is managed by reading in from a local file.
