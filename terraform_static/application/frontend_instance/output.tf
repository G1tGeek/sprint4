output "frontend_private_ip" {
  description = "The private IP address of the Frontend instance"
  value       = aws_instance.frontend.private_ip
}

output "frontend_instance_id" {
  description = "The instance ID of the Frontend instance"
  value       = aws_instance.frontend.id
}

output "frontend_sg_id" {
  description = "The security group ID of the Frontend instance"
  value       = aws_security_group.frontend_sg.id
}
