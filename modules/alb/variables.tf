variable "vpc_id" {
  description = "The VPC ID where resources will be deployed"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for the load balancer"
  type        = string
}

variable "listener_port" {
  description = "Port for the ALB listener"
  type        = number
}

variable "target_port" {
  description = "Port for the ALB target group"
  type        = number
}
