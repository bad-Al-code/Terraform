# Overview

This module creates and manages an Amazon S3 bucket with a series of configurations that make it suitable for use as a website hosting bucket, with public access and versioning enabled. The module configures bucket ownership, public access controls, ACL, website configuration, versioning, and a bucket policy to allow public read access.

### Resources Created

The following AWS resources are created by this module:

1. S3 Bucket (aws_s3_bucket.this)

- Creates an S3 bucket with a specified name.
- Tags the bucket with a provided Name and Environment tag.

2. S3 Bucket Ownership Controls (aws_s3_bucket_ownership_controls.this)

- Sets ownership control for the bucket, ensuring that the bucket owner has ownership of objects created in the bucket.

3. S3 Bucket Public Access Block (aws_s3_bucket_public_access_block.this)

- Configures public access settings for the bucket. It allows public ACLs and public policies to be set for the bucket.

4. S3 Bucket ACL (aws_s3_bucket_acl.this)

- Sets the bucket's ACL to public-read, making the bucket contents publicly accessible.

5. S3 Bucket Website Configuration (aws_s3_bucket_website_configuration.this)

- Configures the bucket for website hosting, specifying the index.html and error.html files.

6. S3 Bucket Versioning (aws_s3_bucket_versioning.this)

- Enables versioning on the bucket to keep multiple versions of objects.

7. S3 Bucket Policy (aws_s3_bucket_policy.public_read)

- Attaches a policy that allows public read access to objects within the bucket.

### Inputs

The module takes the following input variables:

| Name          | Type   | Description                         | Default |
| ------------- | ------ | ----------------------------------- | ------- |
| `bucket_name` | string | Name of the S3 bucket to be created | N/A     |
| `environment` | string | Environment tag for the S3 bucket   | N/A     |

### Outputs

The module provides the following outputs:

| Name          | Description                       |
| ------------- | --------------------------------- |
| `bucket_name` | The name of the created S3 bucket |

### Usage Example

```hcl
module "s3_bucket" {
  source      = "./modules/s3-bucket"
  bucket_name = "my-website-bucket"
  environment = "production"
}
```

### Features

- **Public Website Hosting**: The bucket is configured for static website hosting with support for `index.html` and `error.html` pages.
- **Public Read Access**: A bucket policy allows public read access to all objects in the bucket.
- **Versioning**: Enables versioning on the bucket to retain multiple versions of objects, preventing data loss from overwrites.
- **Ownership Control**: Configures ownership controls to ensure the bucket owner has full control over objects in the bucket.
