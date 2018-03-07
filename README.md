Module usage:

     module "endpoint" {
       source         = "git::https://github.com/UKHomeOffice/acp-tf-endpoint-service?ref=master"

       name            = "internal-ingress"
       alb_name        = "test"
       environment     = "dev"            # by default both Name and Env is added to the tags
       dns_zone        = "example.com"
     }



## Inputs

| Name | Description | Default | Required |
|------|-------------|:-----:|:-----:|
| acceptance_required | Indicates whether acceptance is required | `false` | no |
| alb_name | The name of the AWS ALB which we should connect the endpoint service to | - | yes |
| aws_accounts | A list of accounts which are permitted to access this endpoint service | - | yes |
| dns_zone | An environment name for the ELB, i.e. prod, dev, ci etc and used to search for assets | `` | no |
| environment | An environment name for the ELB, i.e. prod, dev, ci etc and used to search for assets | - | yes |
| name | A descriptive name for the endpoint service | - | yes |

