provider "aws" {
  region = var.region
}

module "ec2_instance" {
  source        = "./modules/ec2"
  ami           = var.ami
  instance_type = var.instance_type
  name          = var.name
}

module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-aviz-vpc"
  cidr = "192.168.0.0/16"

  azs             = ["ap-south-1a", "ap-south-1b"]
  private_subnets = ["192.168.1.0/24", "192.168.2.0/24"]
  public_subnets  = ["192.168.3.0/24", "192.168.4.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}