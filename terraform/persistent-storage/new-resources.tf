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

# Created at 2023-09-27 by root
resource "aws_db_instance" "devops_days_buffalo" {
  allocated_storage                     = "20"
  auto_minor_version_upgrade            = "true"
  availability_zone                     = "us-east-1f"
  backup_retention_period               = "1"
  backup_window                         = "06:36-07:06"
  ca_cert_identifier                    = "rds-ca-2019"
  copy_tags_to_snapshot                 = "true"
  customer_owned_ip_enabled             = "false"
  db_subnet_group_name                  = "${aws_db_subnet_group.tfer--default-vpc-0e011b4a5a571b7e6.name}"
  deletion_protection                   = "false"
  engine                                = "postgres"
  engine_version                        = "15.3"
  iam_database_authentication_enabled   = "false"
  identifier                            = "devops-days-buffalo"
  instance_class                        = "db.t3.micro"
  iops                                  = "0"
  kms_key_id                            = "arn:aws:kms:us-east-1:682649898103:key/294a43e5-9c30-4e21-a497-c1cce3a1967d"
  license_model                         = "postgresql-license"
  maintenance_window                    = "fri:03:45-fri:04:15"
  max_allocated_storage                 = "1000"
  monitoring_interval                   = "0"
  multi_az                              = "false"
  network_type                          = "IPV4"
  option_group_name                     = "default:postgres-15"
  parameter_group_name                  = "default.postgres15"
  performance_insights_enabled          = "false"
  performance_insights_retention_period = "0"
  port                                  = "5432"
  publicly_accessible                   = "true"
  storage_encrypted                     = "true"
  storage_throughput                    = "0"
  storage_type                          = "gp2"
  username                              = "postgres"
  vpc_security_group_ids                = ["sg-04e6321d4531e452e"]
}

# This resource has no identified cost 
resource "aws_db_snapshot" "outside_of_tf_control_aae_snapshot" {
  db_instance_identifier = "outside-of-tf-control-aae"
  db_snapshot_identifier = "outside-of-tf-control-aae-snapshot"
}

# This resource has no identified cost 
resource "aws_db_snapshot" "rds_003A_devops_days_buffalo_2023_10_02_06_47" {
  db_instance_identifier = "devops-days-buffalo"
  db_snapshot_identifier = "rds:devops-days-buffalo-2023-10-02-06-47"
}

# This resource has no identified cost 
resource "aws_db_snapshot" "rds_003A_devops_days_buffalo_2023_10_03_06_47" {
  db_instance_identifier = "devops-days-buffalo"
  db_snapshot_identifier = "rds:devops-days-buffalo-2023-10-03-06-47"
}

# This resource has no identified cost 
# Created at 2023-09-27 by root
resource "aws_db_subnet_group" "default_vpc_0e011b4a5a571b7e6" {
  description = "Created from the RDS Management Console"
  name        = "default-vpc-0e011b4a5a571b7e6"
  subnet_ids  = ["subnet-00529b1ec11eca6b9", "subnet-04b0c0aaf5f2f685f", "subnet-05d40b6a97dfd9e38", "subnet-091751b8f2e250fb2", "subnet-0b71dcbc4c9769554", "subnet-0f7844a34bc5ac55b"]
}

# This resource has no identified cost 
# Created at 2023-08-09 by root
resource "aws_lb_listener" "arn_003A_aws_003A_elasticloadbalancing_003A_us_east_1_003A_682649898103_003A_listener_002F_app_002F_tf_managed_demo_alb_002F_4c89e21113613302_002F_14f215be0e2d5e4d" {
  default_action {
    fixed_response {
      content_type = "text/plain"
      status_code  = "503"
    }

    order = "1"
    type  = "fixed-response"
  }

  load_balancer_arn = "${data.terraform_remote_state.local.outputs.aws_lb_tfer--tf-managed-demo-alb_id}"
  port              = "80"
  protocol          = "HTTP"

  tags = {
    source = "clickops"
  }

  tags_all = {
    source = "clickops"
  }
}

