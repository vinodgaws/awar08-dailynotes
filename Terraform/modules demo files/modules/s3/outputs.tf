output "bucket_arn" {
    description = "The s3 bucket arn"
    value = aws_s3_bucket.mybucket.arn
}

output "bucket_id" {
    description = "The s3 bucket id"
    value = aws_s3_bucket.mybucket.id
}