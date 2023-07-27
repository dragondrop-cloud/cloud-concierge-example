variable "org" {
  description = "The root organization name within Terraform Cloud."
  type        = string
}

variable "subnet_id_one" {
  description = "The ID of the first subnet to which the secrets and IAM definitions are deployed."
  type        = string
}

variable "subnet_id_two" {
  description = "The ID of the second subnet to which the secrets and IAM definitions are deployed."
  type        = string
}
