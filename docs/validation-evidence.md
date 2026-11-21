# Amazon Redshift Terraform Validation Evidence

## Environment

- AWS account: `774305591665`
- IAM user: `3rd-lab-user`
- AWS region: `us-east-1`
- Terraform version: `1.17.0`
- Project: `terraform-aws-redshift-lab`

## AWS Discovery

Command:

```bash
aws redshift describe-clusters \
  --region us-east-1 \
  --query 'length(Clusters)' \
  --output text
```

Observed result:

```text
0
```

Command:

```bash
aws redshift-serverless list-workgroups \
  --region us-east-1 \
  --query 'length(workgroups)' \
  --output text
```

Observed result:

```text
0
```

## Terraform Validation

Command:

```bash
terraform validate
```

Observed result:

```text
Success! The configuration is valid.
```

## Terraform Plan

Command:

```bash
terraform plan -input=false -no-color
```

Observed result:

```text
Plan: 2 to add, 0 to change, 0 to destroy.
```

## Planned Resources

1. `aws_redshiftserverless_namespace.lab`
2. `aws_redshiftserverless_workgroup.lab`

## Planned Outputs

- `namespace_name`: `terraform-redshift-lab`
- `workgroup_name`: `terraform-redshift-lab`
- `workgroup_arn`: Known after apply

## Deployment Status

**PLAN ONLY — NOT DEPLOYED.**

No `terraform apply` was executed.

No AWS resources were created or modified by this lab.

No database queries or workloads were tested.

## Screenshot

`screenshots/redshift-terraform-validation.png` — actual terminal evidence of successful Terraform validation and planning.

