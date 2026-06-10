output "ec2_instance_id" {
  value = module.ec2_instance.Instance_id
}

output "ec2_public_ip" {
  value = module.ec2_instance.Instance_public_ip
}

output "s3_bucket_id" {
  value = module.s3_bucket.bucket_id
}