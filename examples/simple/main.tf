provider "aws" {
  region = "us-east-1"
}

module "ec2_iam_role" {
  source = "leonardobiffi/ec2-iam-role/aws"
  # version = "0.1.0"

  name = "ec2-iam-role"

  policy_arn = [
    "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess",
    "arn:aws:iam::aws:policy/CloudWatchReadOnlyAccess",
  ]
}
