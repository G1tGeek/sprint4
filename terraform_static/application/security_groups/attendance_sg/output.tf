output "attendance_sg_id" {
  description = "The ID of the attendance security group"
  value       = aws_security_group.attendance_sg.id
}
