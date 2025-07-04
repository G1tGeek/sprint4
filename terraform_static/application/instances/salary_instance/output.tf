output "salary_private_ip" {
  description = "The private IP address of the salary instance"
  value       = aws_instance.salary.private_ip
}

output "salary_instance_id" {
  description = "The instance ID of the salary instance"
  value       = aws_instance.salary.id
}
