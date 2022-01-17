<!-- BEGIN_TF_DOCS -->
Module usage:

     module "endpoint" {
       source         = "git::https://github.com/UKHomeOffice/acp-tf-endpoint-service?ref=master"

       name            = "internal-ingress"
       alb\_arn         = "arn:name"
       environment     = "dev"            # by default both Name and Env is added to the tags
     }

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.70 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.72.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_vpc_endpoint_service.service](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint_service) | resource |
| [aws_vpc_endpoint_service_allowed_principal.permitted](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint_service_allowed_principal) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acceptance_required"></a> [acceptance\_required](#input\_acceptance\_required) | Indicates whether acceptance is required | `bool` | `false` | no |
| <a name="input_alb_arn"></a> [alb\_arn](#input\_alb\_arn) | The arn of the AWS ALB which we should connect the endpoint service to | `any` | n/a | yes |
| <a name="input_aws_accounts"></a> [aws\_accounts](#input\_aws\_accounts) | A list of accounts which are permitted to access this endpoint service | `list(string)` | `[]` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | An environment name for the ELB, i.e. prod, dev, ci etc and used to search for assets | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | A descriptive name for the endpoint service | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | The private dns for the endpoint service |
<!-- END_TF_DOCS -->