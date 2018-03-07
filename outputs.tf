output "dns" {
  description = "The FQDN of the newly created endpoint service"
  value       = "${var.name}-${var.environment}.${var.dns_zone}"
}

output "endpoint" {
  description = "The private dns for the endpoint service"
  value       = "${aws_vpc_endpoint_service.service.private_dns_name}"
}

