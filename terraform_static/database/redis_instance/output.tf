output "redis_private_ip" {
  description = "The private IP address of the redis instance"
  value       = aws_instance.redis.private_ip
}

output "redis_instance_id" {
  description = "The instance ID of the redis instance"
  value       = aws_instance.redis.id
}
