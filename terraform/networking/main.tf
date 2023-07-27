resource "aws_lb" "example_lb" {
  name               = "tf-managed-demo-alb"
  internal           = false
  load_balancer_type = "application"
  subnets            = [var.subnet_id_one, var.subnet_id_two]

  enable_deletion_protection = true
  enable_tls_version_and_cipher_suite_headers = false

  tags = {
    origin        = "demonstration"
    creator       = "terraform"
    resource_type = "networking"
  }
}
