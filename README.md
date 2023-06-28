# Intro to Terraform
This repository contains starter code for Session #1 - Intro to Terraform of the Terraform Cohort

## Dependencies
- `terraform ~> 1.5`
- `Google Cloud SDK ~> 434.0.0`

## How to install
#### macOS
``` bash
brew install warrensbox/tap/tfswitch  
```
  
#### Linux (Cloud Shell)
``` bash
curl -L https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh | bash
```

### Download and symlink Terraform binary
``` bash
tfswitch #
```

## How to deploy
```bash

# clone the repo and cd in
git clone https://gitlab.com/google-cloud-ce/googlers/noahmercado/terraform-cohort/intro-to-terraform.git

cd intro-to-terraform

# OPTIONAL: If cloning locally and using devctonainer, build and start the VS Code devcontainer which includes all the required tooling to depoy
devcontainer build && devcontainer open

# Log in to gcloud cli to authenticate Terraform
gcloud auth login --update-adc

# Initialize the Terraform
terraform init

# Validate the Terraform configuration
terraform validate

# Generate a Terraform plan
terraform plan

# Apply the Terraform
terraform apply
```
