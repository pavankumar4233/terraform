# Terraform Mono-Repo (Enterprise-Grade)

### Layout
- `modules/`: Reusable, versionable building blocks (no hard-coded names).
- `environments/{dev,staging,prod}/`: Environment stacks that compose modules.
- Each environment has:
  - `providers.tf` — Terraform & provider constraints
  - `variables.tf` — input contracts
  - `main.tf` — module composition
  - `*.tfvars` — per-environment values

### Usage
```bash
cd environments/prod
terraform init
terraform plan -var-file="prod.tfvars"
terraform apply -var-file="prod.tfvars"
```

### Notes
- Tags and names are not baked into modules; they are passed as variables.
- `compute` uses an Ubuntu 22.04 LTS image. Adjust as needed.
- Public IP is Dynamic by default. Switch to Standard/Static for production hardening.
- Consider remote state (Terraform Cloud/Azure Storage) and state locking for teams.
