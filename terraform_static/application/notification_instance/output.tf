output "notification_private_ip" {
  description = "The private IP address of the notification instance"
  value       = aws_instance.notification.private_ip
}

output "notification_instance_id" {
  description = "The instance ID of the notification instance"
  value       = aws_instance.notification.id
}

output "notification_sg_id" {
  description = "The security group ID of the notification instance"
  value       = aws_security_group.notification_sg.id
}
