# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY
#

variable "key_pair_name" {
  description = "The name of the Key Pair that can be used to SSH to each EC2 instance"
  default="ec2_training_private_key"
}

variable "vpc_id" {
  description = "The id of the VPC where the EC2 instance should run"
}


variable "region" {
  description = "The region to apply these templates to (e.g. us-east-1)"
}

variable "subnet_id" {
  description = "The subnet id where the EC2 instance should run"
}






