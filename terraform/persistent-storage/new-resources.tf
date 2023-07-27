# Identified Resource Cost Components:
## Database instance (on-demand, Single-AZ, db.t3.micro)
###### Monthly Cost: $13.14
###### Price / Unit: $0.018 / hours
## Storage (general purpose SSD, gp2)
###### Monthly Cost: $2.3
###### Price / Unit: $0.115 / GB
## Additional backup storage
###### Monthly Cost: $0
###### Price / Unit: $0.095 / GB
## Performance Insights API
###### Monthly Cost: $0
###### Price / Unit: $0.01 / 1000 requests

# Created at 2023-07-26 by root
resource "aws_db_instance" "created_outside_of_terraform_workflow" {
  allocated_storage                     = "20"
  auto_minor_version_upgrade            = "true"
  availability_zone                     = "us-east-1c"
  backup_retention_period               = "1"
  backup_window                         = "03:36-04:06"
  ca_cert_identifier                    = "rds-ca-2019"
  copy_tags_to_snapshot                 = "true"
  customer_owned_ip_enabled             = "false"
  db_subnet_group_name                  = "${aws_db_subnet_group.tfer--default-vpc-0e011b4a5a571b7e6.name}"
  deletion_protection                   = "false"
  engine                                = "postgres"
  engine_version                        = "15.3"
  iam_database_authentication_enabled   = "false"
  identifier                            = "created-outside-of-terraform-workflow"
  instance_class                        = "db.t3.micro"
  iops                                  = "0"
  kms_key_id                            = "arn:aws:kms:us-east-1:682649898103:key/294a43e5-9c30-4e21-a497-c1cce3a1967d"
  license_model                         = "postgresql-license"
  maintenance_window                    = "sun:04:57-sun:05:27"
  max_allocated_storage                 = "1000"
  monitoring_interval                   = "0"
  multi_az                              = "false"
  network_type                          = "IPV4"
  option_group_name                     = "default:postgres-15"
  parameter_group_name                  = "default.postgres15"
  performance_insights_enabled          = "true"
  performance_insights_kms_key_id       = "arn:aws:kms:us-east-1:682649898103:key/294a43e5-9c30-4e21-a497-c1cce3a1967d"
  performance_insights_retention_period = "7"
  port                                  = "5432"
  publicly_accessible                   = "false"
  storage_encrypted                     = "true"
  storage_throughput                    = "0"
  storage_type                          = "gp2"
  username                              = "postgres"
  vpc_security_group_ids                = ["sg-04e6321d4531e452e"]
}

# This resource has no identified cost 
# Created at 2023-07-26 by root
resource "aws_db_subnet_group" "default_vpc_0e011b4a5a571b7e6" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-0e011b4a5a571b7e6"
  subnet_ids  = ["subnet-00529b1ec11eca6b9", "subnet-04b0c0aaf5f2f685f", "subnet-05d40b6a97dfd9e38", "subnet-091751b8f2e250fb2", "subnet-0b71dcbc4c9769554", "subnet-0f7844a34bc5ac55b"]
}

