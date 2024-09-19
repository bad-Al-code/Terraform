
output "bucket_id" {
  value = module.aws_s3_bucket.bucket_id
}

output "bucket_arn" {
  value = module.aws_s3_bucket.bucket_arn
}

output "website_endpoint" {
  value = module.aws_s3_bucket.website_endpoint
}

output "key_name" {
  value = module.aws_key_pair.key_name
}

output "key_pair_id" {
  value = module.aws_key_pair.key_pair_id
}

output "vpc_id" {
  value = module.aws_vpc.vpc_id
}

output "subnet_id" {
  value = module.aws_vpc.subnet_id
}
