output "employee_sg_id" {
  description = "The ID of the employee security group"
  value       = aws_security_group.employee_sg.id
}
