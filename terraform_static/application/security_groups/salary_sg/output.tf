output "salary_sg_id" {
  description = "The ID of the salary security group"
  value       = aws_security_group.salary_sg.id
}
