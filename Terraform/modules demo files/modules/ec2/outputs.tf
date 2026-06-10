output "Instance_id" {
  description = "Launche dinstance id"
  value = aws_instance.webserver.id
}

output "Instance_public_ip" {
  description = "Launched instance public ip"
  value = aws_instance.webserver.public_ip
}

output "Instance_private_ip" {
  description = "Launched instance private ip"
  value = aws_instance.webserver.private_ip
}