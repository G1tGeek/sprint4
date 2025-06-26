output "frontend_sg_id" {
  description = "The ID of the frontend security group"
  value       = aws_security_group.frontend_sg.id
}
