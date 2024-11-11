module "alb" {
  source            = "../../modules/alb"
  vpc_id            = var.vpc_id
  security_group_id = var.security_group_id
  listener_port     = var.alb_listener_port
  target_port       = var.alb_target_port
}

module "api_gateway" {
  source               = "../../modules/api_gateway"
  region               = var.region
  load_balancer_arn    = module.alb.load_balancer_arn
  load_balancer_dns    = module.alb.load_balancer_dns
  load_balancer_target = module.alb.target_group_arn
}
