# eks

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | >= 3.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.22.0 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.1.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_eks_addon.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_addon) | resource |
| [aws_eks_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_cluster) | resource |
| [aws_eks_node_group.additional_node_groups](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_eks_node_group.compute](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_eks_node_group.gpu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_eks_node_group.platform](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eks_node_group) | resource |
| [aws_iam_policy.autoscaler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.domino_ecr_restricted](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.ebs_csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.route53](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.s3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.snapshot](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.eks_nodes](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.aws_eks_nodes](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.custom_eks_nodes](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.custom_eks_nodes_route53](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_kms_key.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_launch_template.additional_node_groups](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_launch_template.compute](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_launch_template.gpu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_launch_template.platform](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_security_group.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.eks_nodes](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.bastion_eks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.eks](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.node](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [null_resource.kubeconfig](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [aws_ami.eks_gpu](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |
| [aws_caller_identity.aws_account](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.autoscaler](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.domino_ecr_restricted](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.ebs_csi](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.eks_cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.eks_nodes](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.kms_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.route53](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.s3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.snapshot](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_node_groups"></a> [additional\_node\_groups](#input\_additional\_node\_groups) | Additional EKS managed node groups definition. | <pre>map(object({<br>    name           = string<br>    ami            = optional(string)<br>    instance_type  = string<br>    min_per_az     = number<br>    max_per_az     = number<br>    desired_per_az = number<br>    label          = string<br>    volume = object({<br>      size = string<br>      type = string<br>    })<br>  }))</pre> | `{}` | no |
| <a name="input_bastion_security_group_id"></a> [bastion\_security\_group\_id](#input\_bastion\_security\_group\_id) | Bastion security group id. | `string` | `""` | no |
| <a name="input_create_bastion_sg"></a> [create\_bastion\_sg](#input\_create\_bastion\_sg) | Create bastion access rules toggle. | `bool` | n/a | yes |
| <a name="input_default_node_groups"></a> [default\_node\_groups](#input\_default\_node\_groups) | EKS managed node groups definition. | <pre>object(<br>    {<br>      compute = object(<br>        {<br>          name           = optional(string, "compute")<br>          ami            = optional(string)<br>          instance_type  = optional(string, "m5.2xlarge")<br>          min_per_az     = optional(number, 0)<br>          max_per_az     = optional(number, 10)<br>          desired_per_az = optional(number, 1)<br>          volume = optional(object(<br>            {<br>              size = optional(number, 100)<br>              type = optional(string, "gp3")<br>            }),<br>            {<br>              size = 100<br>              type = "gp3"<br>            }<br>          )<br>      }),<br>      platform = object(<br>        {<br>          name           = optional(string, "platform")<br>          ami            = optional(string)<br>          instance_type  = optional(string, "m5.4xlarge")<br>          min_per_az     = optional(number, 0)<br>          max_per_az     = optional(number, 10)<br>          desired_per_az = optional(number, 1)<br>          volume = optional(object(<br>            {<br>              size = optional(number, 100)<br>              type = optional(string, "gp3")<br>            }),<br>            {<br>              size = 100<br>              type = "gp3"<br>            }<br>          )<br>      }),<br>      gpu = object(<br>        {<br>          name           = optional(string, "gpu")<br>          ami            = optional(string)<br>          instance_type  = optional(string, "g4dn.xlarge")<br>          min_per_az     = optional(number, 0)<br>          max_per_az     = optional(number, 10)<br>          desired_per_az = optional(number, 0)<br>          volume = optional(object(<br>            {<br>              size = optional(number, 100)<br>              type = optional(string, "gp3")<br>            }),<br>            {<br>              size = 100<br>              type = "gp3"<br>            }<br>          )<br>      })<br>  })</pre> | <pre>{<br>  "compute": {},<br>  "gpu": {},<br>  "platform": {}<br>}</pre> | no |
| <a name="input_deploy_id"></a> [deploy\_id](#input\_deploy\_id) | Domino Deployment ID | `string` | n/a | yes |
| <a name="input_eks_cluster_addons"></a> [eks\_cluster\_addons](#input\_eks\_cluster\_addons) | EKS cluster addons. | `list(string)` | <pre>[<br>  "vpc-cni",<br>  "kube-proxy",<br>  "coredns"<br>]</pre> | no |
| <a name="input_eks_security_group_rules"></a> [eks\_security\_group\_rules](#input\_eks\_security\_group\_rules) | EKS security group rules. | <pre>map(object({<br>    security_group_id        = string<br>    protocol                 = string<br>    from_port                = string<br>    to_port                  = string<br>    type                     = string<br>    description              = string<br>    source_security_group_id = string<br>  }))</pre> | `{}` | no |
| <a name="input_k8s_version"></a> [k8s\_version](#input\_k8s\_version) | EKS cluster k8s version. | `string` | n/a | yes |
| <a name="input_kubeconfig_path"></a> [kubeconfig\_path](#input\_kubeconfig\_path) | Kubeconfig file path. | `string` | `"kubeconfig"` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | Private subnets object | <pre>list(object({<br>    cidr_block = string<br>    name       = string<br>    type       = string<br>    zone       = string<br>    zone_id    = string<br>    id         = string<br>  }))</pre> | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS region for the deployment | `string` | n/a | yes |
| <a name="input_route53_hosted_zone_name"></a> [route53\_hosted\_zone\_name](#input\_route53\_hosted\_zone\_name) | Route53 zone | `string` | n/a | yes |
| <a name="input_s3_buckets"></a> [s3\_buckets](#input\_s3\_buckets) | S3 buckets information that the nodegroups need access to | <pre>list(object({<br>    bucket_name = string<br>    arn         = string<br>  }))</pre> | n/a | yes |
| <a name="input_ssh_pvt_key_path"></a> [ssh\_pvt\_key\_path](#input\_ssh\_pvt\_key\_path) | SSH private key filepath. | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | EKS cluster API endpoint. |
| <a name="output_eks_master_role_name"></a> [eks\_master\_role\_name](#output\_eks\_master\_role\_name) | EKS master role arns. |
| <a name="output_hosted_zone_id"></a> [hosted\_zone\_id](#output\_hosted\_zone\_id) | DNS hosted zone ID. |
| <a name="output_managed_nodes_role_arns"></a> [managed\_nodes\_role\_arns](#output\_managed\_nodes\_role\_arns) | EKS managed nodes arns. |
| <a name="output_nodes_security_group_id"></a> [nodes\_security\_group\_id](#output\_nodes\_security\_group\_id) | EKS managed nodes security group id. |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | EKS security group id. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->