output "instance_ip" {
  description = "The public IP address of the instance"
  value       = aws_instance.ci_cd_instance.public_ip
}
