output "load_balancer_dns" {
  value = module.alb.load_balancer_dns
}

output "api_gateway_endpoint" {
  value = module.api_gateway.api_endpoint
}
