# Terraform modules in AWS

This repository contains a collection of Terraform modules optimized in a modular structure. Its designed to manage multiple inrastructure modules using Terraform, with each project defined as a separate module.

### Repository Structure

```bash
.
├── main.tf                 # Main Terraform configuration file
├── variables.tf            # Global variables
├── outputs.tf              # Global outputs
├── terraform.tfvars        # Variable values
├── modules/                # Directory containing individual project modules
│   └── aws-s3-bucket/          # S3 bucket project module
│       ├── README.md       # Description of the module
│       ├── main.tf         # S3 bucket specific configuration
│       ├── variables.tf    # S3 bucket specific variables
│       └── outputs.tf      # S3 bucket specific outputs
└── README.md               # Description of repository
```

### Getting Started

1. Ensure you have Terraform installed on your local machine
2. Clone the repository:

```bash
git clone https://github.com/bad-Al-code/Terraform
cd Terraform
```

3. Change `terraform.tfvars.sample` to `terraform.tfvars`
4. Review and modify the `terraform.tfvars` file to set desired variable values
5. Initialize Terraform

```bash
terraform init
```

6. Plan your Terraform changes

```bash
terraform plan
```

7. Apply the Terraform changes:

```bash
terraform apply
```

### Adding new modules

To add a new project:

1. Create a new directory under the `modules/` directory for your project.
2. Add `main.tf`, `variables.tf`, `outputs.tf`, `README.md` file in your new project directory.
3. In the root `main.tf` file, add a new module block to include your project:

```hcl
module "your_new_project" {
    source = "./modules/your_new_project"

    # Add any necessary variables
}
```

4. If needed, add new variables to the root `variables.tf` file and corrosponding values in `terraform.tfvars`

### Best Practices

- Keep sensitive information out of version control. Use `terraform.tfvars` for variable values and ensure it's listed in `.gitignore`
- Use consistent naming conventions across your modules.
