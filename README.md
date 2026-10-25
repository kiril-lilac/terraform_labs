# Terraform Labs

Personal labs for learning Terraform infrastructure as code.

## Labs

### Docker First Lab

Located in `docker-first/`.

Creates:

- A Docker bridge network
- An Nginx Docker image
- An Nginx container published on a configurable host port

### Nginx Module

Located in `modules/nginx/`.

A reusable Terraform module that creates an Nginx Docker container.

## Usage

```bash
cd docker-first
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy
```

## Important

- Terraform state files are not committed.
- Provider caches are not committed.
- Sensitive variable files are not committed.
