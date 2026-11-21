
locals {
  project = "terraform-aws-redshift-lab"

  tags = {
    Project     = local.project
    Environment = "learning"
    ManagedBy   = "Terraform"
  }
}

# Namespace: organizes Redshift database resources
resource "aws_redshiftserverless_namespace" "lab" {
  namespace_name = "terraform-redshift-lab"
  db_name        = "analyticsdb"

  # Manage database credentials using AWS Secrets Manager
  manage_admin_password = true

  tags = local.tags
}

# Workgroup: provides compute for SQL queries
resource "aws_redshiftserverless_workgroup" "lab" {
  workgroup_name = "terraform-redshift-lab"
  namespace_name = aws_redshiftserverless_namespace.lab.namespace_name

  base_capacity = 8

  publicly_accessible = false

  tags = local.tags
}
