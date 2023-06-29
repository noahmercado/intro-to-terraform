# Intro to Terraform
This repository contains starter code for Session #1 - Intro to Terraform of the Terraform Cohort

## Dependencies
- `terraform ~> 1.5`
- `Google Cloud SDK ~> 434.0.0`

## Prereqs
- Provision a GCP project to deploy resources into
- If you want to use VS Code + Devcontainer as your IDE
  - Follow instructuions [here to setup VS Code + Devcontainer ](https://code.visualstudio.com/docs/devcontainers/tutorial)
- If you're using your local machine + VS Code as your IDE, ensure you have the correct version of Terraform installed (see `How to Install`)
- If you're using Cloud Shell as your IDE, Terraform comes preinstalled

## How to install on local machine
#### macOS
``` bash
brew install warrensbox/tap/tfswitch  
```
  
#### Linux
``` bash
curl -L https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh | bash
```

### Download and symlink Terraform binary
``` bash
tfswitch # Select the Terraform version you want to install
```

## How to deploy
```bash

# clone the repo and cd in
git clone https://github.com/noahmercado/intro-to-terraform.git

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
