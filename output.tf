output "instance_id" {
  value       = aws_instance.ap-south-2-server.id
  description = "ID of the EC2 instance"
  sensitive   = false
}

output "instance_id" {
  value       = aws_instance.ap-south-2-server.id
  description = "ID of the EC2 instance"
  sensitive   = false
}

output "public_ip" {
  value       = aws_instance.ap-south-2-server.public_ip
  description = "Public IP of ap-south-2 instance"
  sensitive   = false
}

output "private_ip" {
  value       = aws_instance.ap-south-2-server.private_ip
  description = "Private IP of ap-south-2 instance"
  sensitive   = true
}

output "us_east1_id" {
  value = aws_instance.us-east-1-server.id
}
