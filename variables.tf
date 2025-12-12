variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  default     = "ami-0f0a3422251f6deba" # Replace with your AMI
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "public_key_path" {
  description = "Path to your SSH public key"
  default     = "~/.ssh/id_rsa.pub"
}
