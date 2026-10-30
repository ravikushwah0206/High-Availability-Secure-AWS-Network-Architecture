variable "aws_region" {
  description = "AWS Region for secure network deployment"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name prefix for all network resources"
  type        = string
  default     = "secure-ha-network"
}

variable "vpc_cidr" {
  description = "CIDR block for the custom VPC"
  type        = string
  default     = "10.0.0.0/16"
}