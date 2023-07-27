resource "aws_s3_bucket" "cloud_concierge_demo_bucket" {
  bucket        = "cloud_concierge_demo_bucket"
  force_destroy = "false"

  tags = {
    origin        = "demonstration"
    creator       = "terraform"
    resource_type = "persistent storage"
  }
}
