data "aws_caller_identity" "current" {}

data "aws_kms_key" "rds_key" {
  key_id = "alias/aws/rds"
}

data "aws_scm_parameter" "aws_vpc_id"{
    name="/baseline/${var.environment}/vpc_id"}



data "aws_scm_parameter" "aws_network_cidrs"{
    name="/baseline/${var.environment}/network_cidrs"}



data "aws_scm_parameter" "vpc_cidr"{
    name="/baseline/${var.environment}/vpc_cidr"}


data "aws_vpc" "vpc"{
    id="local.vpc_id"
    }