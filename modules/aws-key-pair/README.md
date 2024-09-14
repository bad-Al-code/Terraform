# Overview

This modules creates an AWS EC2 key pair using the provided public key. The key can be used to securely access EC2 instances.

### Usage

```hcl
module "key_pair" {
  source          = "./modules/aws-key-pair"
  key_name        = "my-key-pair"
  public_key_path = "~/.ssh/id_rsa.pub"
  environment     = "dev"
}
```

### Inputs

| Name              | Description                                | Type   | Default | Required |
| ----------------- | ------------------------------------------ | ------ | ------- | -------- |
| `key_name`        | The name for the key pair                  | string | n/a     | yes      |
| `public_key_path` | Path to the public key file                | string | n/a     | yes      |
| `environment`     | The environment (e.g., dev, staging, prod) | string | n/a     | yes      |

### Outputs

| Name          | Description                      |
| ------------- | -------------------------------- |
| `key_name`    | The name of the created key pair |
| `key_pair_id` | The ID of the created key pair   |

### Notes

- Ensure that the public key file exists at the specified path before applying this module.
- The public key should be in the OpenSSH public key format.
- AWS does not return the private key, so make sure to keep your local private key secure.
