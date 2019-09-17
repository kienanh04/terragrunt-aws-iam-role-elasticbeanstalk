provider "aws" {
  region  = "${var.aws_region}"
  profile = "${var.aws_profile}"
}

terraform {
  backend "s3" {}
}

///////////////////////
//        iam        //
///////////////////////
module "iam" {
  source = "git::https:/github.com/thanhbn87/terraform-aws-iam-role-elasticbeanstalk.git?ref=tags/0.1.0"

  name        = "${var.name}"
  namespace   = "${var.namespace}"
  project_env = "${var.project_env}"
  project_env_short = "${var.project_env_short}"

  temp_file_assumerole       = "${var.temp_file_assumerole}"
  temp_file_policy           = "${var.temp_file_policy}"
  policy_resources           = "${var.policy_resources}"
  iam_instance_profile       = "${var.iam_instance_profile}"
  service_name               = "${var.service_name}"
  enhanced_reporting_enabled = "${var.enhanced_reporting_enabled}"
  ssm_enabled                = "${var.ssm_enabled}"
  ssm_registration_limit     = "${var.ssm_registration_limit}"

  tags = "${var.tags}" 
}
