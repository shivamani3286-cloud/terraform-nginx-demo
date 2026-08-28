output "vpc_id" {
  description = "ID of the Terraform-created VPC"
  value       = aws_vpc.nginx.id
}

output "subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "security_group_id" {
  description = "ID of the Nginx security group"
  value       = aws_security_group.nginx.id
}

output "instance_id" {
  description = "ID of the Nginx EC2 instance"
  value       = aws_instance.nginx.id
}

output "public_ip" {
  description = "Public IPv4 address of the Nginx instance"
  value       = aws_instance.nginx.public_ip
}

output "website_url" {
  description = "URL of the Nginx website"
  value       = "http://${aws_instance.nginx.public_ip}"
}
