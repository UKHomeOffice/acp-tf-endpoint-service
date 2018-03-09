/**
 * Module usage:
 *
 *      module "endpoint" {
 *        source         = "git::https://github.com/UKHomeOffice/acp-tf-endpoint-service?ref=master"
 *
 *        name            = "internal-ingress"
 *        alb_arn         = "arn:name"
 *        environment     = "dev"            # by default both Name and Env is added to the tags
 *      }
 *
 */

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
