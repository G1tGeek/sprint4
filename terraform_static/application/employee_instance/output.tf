output "employee_private_ip" {
  description = "The private IP address of the employee instance"
  value       = aws_instance.employee.private_ip
}

output "employee_instance_id" {
  description = "The instance ID of the employee instance"
  value       = aws_instance.employee.id
}

output "employee_sg_id" {
  description = "The instance ID of the employee instance"
  value       = aws_security_group.employee_sg.id
}