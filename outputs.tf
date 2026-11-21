
output "namespace_name" {
  description = "Name of the planned Redshift Serverless namespace."
  value       = aws_redshiftserverless_namespace.lab.namespace_name
}

output "workgroup_name" {
  description = "Name of the planned Redshift Serverless workgroup."
  value       = aws_redshiftserverless_workgroup.lab.workgroup_name
}

output "workgroup_arn" {
  description = "ARN of the planned Redshift Serverless workgroup."
  value       = aws_redshiftserverless_workgroup.lab.arn
}
