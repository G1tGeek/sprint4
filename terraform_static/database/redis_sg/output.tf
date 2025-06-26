output "redis_sg_id" {
  description = "The ID of the redis security group"
  value       = aws_security_group.redis_sg.id
}
