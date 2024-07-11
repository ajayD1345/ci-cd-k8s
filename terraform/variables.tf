variable "region" {
  description = "The AWS region to deploy the instance"
  default     = "us-east-2"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  default     = "id.rsaved"
}

variable "private_key_path" {
  description = "Path to the private key file"
  default     = "~/.ssh/id.rsaved.pem"
}
