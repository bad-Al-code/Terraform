# AWS VPC Module

Creates a simple VPC with the specified CIDR block.

### Usage

```hcl
module "vpc" {
  source = "./modules/aws_vpc",

  environment = "dev"
}
```

### Input

| Name        | Description                                | Type     | Default | Required |
| ----------- | ------------------------------------------ | -------- | ------- | :------: |
| vpc_cidr    | The CIDR block for the VPC                 | `string` | n/a     |   yes    |
| environment | The environment (e.g., dev, staging, prod) | `string` | n/a     |   yes    |

### Outputs

| Name   | Description       |
| ------ | ----------------- |
| vpc_id | The ID of the VPC |
