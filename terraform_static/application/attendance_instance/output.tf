output "attendance_private_ip" {
  description = "The private IP address of the attendance instance"
  value       = aws_instance.attendance.private_ip
}

output "attendance_instance_id" {
  description = "The instance ID of the attendance instance"
  value       = aws_instance.attendance.id
}

output "attendance_sg_id" {
  description = "The security group ID of the attendance instance"
  value       = aws_security_group.attendance_sg.id
}
