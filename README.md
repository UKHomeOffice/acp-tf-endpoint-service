Module usage:

     module "endpoint" {
       source         = "git::https://github.com/UKHomeOffice/acp-tf-endpoint-service?ref=master"

       name            = "internal-ingress"
       alb_arn         = "arn:name"
       environment     = "dev"            # by default both Name and Env is added to the tags
       dns_zone        = "example.com"
     }



## Inputs

| Name | Description | Default | Required |
|------|-------------|:-----:|:-----:|
| acceptance_required | Indicates whether acceptance is required | `false` | no |
| alb_arn | The arn of the AWS ALB which we should connect the endpoint service to | - | yes |
| aws_accounts | A list of accounts which are permitted to access this endpoint service | `<list>` | no |
| dns_zone | The hosted route53 domain we should had the DNS record to | - | yes |
| environment | An environment name for the ELB, i.e. prod, dev, ci etc and used to search for assets | - | yes |
| name | A descriptive name for the endpoint service | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| dns |  |
| endpoint |  |

