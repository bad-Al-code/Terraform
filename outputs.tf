
output "bucket_id" {
  value = module.s3_bucket.bucket_id
}

output "bucket_arn" {
  value = module.s3_bucket.bucket_arn
}

output "website_endpoint" {
  value = module.s3_bucket.website_endpoint
}
