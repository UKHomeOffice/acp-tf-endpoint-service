/**
 * Module usage:
 *
 *      module "endpoint" {
 *        source         = "git::https://github.com/UKHomeOffice/acp-tf-endpoint-service?ref=master"
 *
 *        name            = "internal-ingress"
 *        alb_arn         = "arn:name"
 *        environment     = "dev"            # by default both Name and Env is added to the tags
 *        dns_zone        = "example.com"
 *      }
 *
 */

## Get the host zone id
data "aws_route53_zone" "selected" {
  name = "${var.dns_zone}."
}

## Create the endpoint service
resource "aws_vpc_endpoint_service" "service" {
  acceptance_required        = "${var.acceptance_required}"
  network_load_balancer_arns = ["${var.alb_arn}"]
}

## Permit the accounts access to the endpoint service
resource "aws_vpc_endpoint_service_allowed_principal" "permitted" {
  count = "${length(var.aws_accounts)}"

  principal_arn           = "${var.aws_accounts[count.index]}"
  vpc_endpoint_service_id = "${aws_vpc_endpoint_service.service.id}"
}

## Create a DNS record if required
resource "aws_route53_record" "dns" {
  name    = "${var.name}-endpoint.${var.dns_zone}"
  records = ["${aws_vpc_endpoint_service.service.private_dns_name}"]
  ttl     = "30"
  type    = "CNAME"
  zone_id = "${data.aws_route53_zone.selected.zone_id}"
}
