variable "name" {
  description = "A descriptive name for the endpoint service"
}

variable "environment" {
  description = "An environment name for the ELB, i.e. prod, dev, ci etc and used to search for assets"
}

variable "dns_zone" {
  description = "An environment name for the ELB, i.e. prod, dev, ci etc and used to search for assets"
  default     = ""
}

variable "alb_name" {
  description = "The name of the AWS ALB which we should connect the endpoint service to"
}

variable "aws_accounts" {
  description = "A list of accounts which are permitted to access this endpoint service"
  type        = "list"
}

variable "acceptance_required" {
  description = "Indicates whether acceptance is required"
  default     = false
}
