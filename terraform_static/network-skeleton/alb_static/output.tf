output "alb_dns_name" {
  value = aws_lb.load-balancer.dns_name
}

output "alb_arn" {
  value = aws_lb.load-balancer.arn
}

output "alb_sg_id" {
  value = aws_security_group.alb_sg.id
}