output "instance_id" {
  value       = aws_instance.nginx.id
  description = "Nginx EC2 instance ID"
}

output "public_ip" {
  value       = aws_instance.nginx.public_ip
  description = "Public IPv4 address"
}

output "website_url" {
  value       = "http://${aws_instance.nginx.public_ip}"
  description = "Nginx website URL"
}
