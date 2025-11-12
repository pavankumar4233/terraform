# Terraform Mono-Repo (Enterprise-Grade)

## Layout
- `modules/`: reusable modules
- `environments/{dev,staging,prod}/`: stacks that compose modules
  - `providers.tf`, `variables.tf`, `main.tf`, `outputs.tf`, `*.tfvars`, and `backend.tf.example`

## Usage
cd environments/prod
terraform init
terraform plan -var-file="prod.tfvars"
terraform apply -var-file="prod.tfvars"
