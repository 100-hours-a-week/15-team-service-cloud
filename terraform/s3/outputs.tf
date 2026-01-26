output "commitme_bucket_policy_id" {
  value = aws_s3_bucket_policy.commitme_bucket_policy.id
}

output "commitme_bucket_id" {
  value = aws_s3_bucket.commitme_bucket.id
}
