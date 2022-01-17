variable "name" {
  description = "A descriptive name for the endpoint service"
}

variable "environment" {
  description = "An environment name for the ELB, i.e. prod, dev, ci etc and used to search for assets"
}

variable "alb_arn" {
  description = "The arn of the AWS ALB which we should connect the endpoint service to"
}

variable "aws_accounts" {
  description = "A list of accounts which are permitted to access this endpoint service"
  type        = list(string)
  default     = []
}

variable "acceptance_required" {
  description = "Indicates whether acceptance is required"
  default     = false
}

