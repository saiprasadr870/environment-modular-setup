variable "region" {
  description = "The AWS region where resources will be deployed"
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "The VPC ID where resources will be deployed"
  default     = "vpc-0dd40c4b0d4ddf322"
}

variable "security_group_id" {
  description = "Security group ID for the load balancer"
  default     = "sg-0515705cacaadc298"
}

variable "alb_listener_port" {
  description = "Port for the ALB listener"
  default     = 80
}

variable "alb_target_port" {
  description = "Port for the ALB target group"
  default     = 8080
}
