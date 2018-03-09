output "endpoint" {
  description = "The private dns for the endpoint service"
  value       = "${aws_vpc_endpoint_service.service.private_dns_name}"
}
