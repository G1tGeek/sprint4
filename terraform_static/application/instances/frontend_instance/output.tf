output "frontend_private_ip" {
  description = "The private IP address of the frontend instance"
  value       = aws_instance.frontend.private_ip
}

output "frontend_instance_id" {
  description = "The instance ID of the frontend instance"
  value       = aws_instance.frontend.id
}