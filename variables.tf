variable "aws_region" {
  description = "AWS region for the demo"
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "project_name" {
  description = "Name used for AWS resources"
  type        = string
  default     = "terraform-nginx-demo"
}
