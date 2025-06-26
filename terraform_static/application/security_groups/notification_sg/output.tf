output "notification_sg_id" {
  description = "The ID of the notification security group"
  value       = aws_security_group.notification_sg.id
}
