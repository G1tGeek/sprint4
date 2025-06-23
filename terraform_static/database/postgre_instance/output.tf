output "postgre_private_ip" {
  description = "The private IP address of the PostgreSQL instance"
  value       = aws_instance.postgresql.private_ip
}

output "postgre_instance_id" {
  description = "The instance ID of the PostgreSQL instance"
  value       = aws_instance.postgresql.id
}

output "postgre_sg_id" {
  description = "The instance ID of the PostgreSQL instance"
  value       = aws_security_group.postgresql_sg.id
}