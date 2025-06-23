output "target_group_arn" {
  description = "ARN of the Target Group"
  value       = aws_lb_target_group.attendance_tg.arn
}

output "target_group_name" {
  description = "Name of the Target Group"
  value       = aws_lb_target_group.attendance_tg.name
}
