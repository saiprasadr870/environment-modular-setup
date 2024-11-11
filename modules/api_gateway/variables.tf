variable "region" {
  description = "The AWS region where resources will be deployed"
  type        = string
}

variable "load_balancer_arn" {
  description = "The ARN of the load balancer"
  type        = string
}

variable "load_balancer_dns" {
  description = "The DNS name of the load balancer"
  type        = string
}

variable "load_balancer_target" {
  description = "The target group ARN of the load balancer"
  type        = string
}
