provider "aws" {
  region = "us-east-1"
 
}

resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "private_key" {
  content        = tls_private_key.example.private_key_pem
  filename       = "${path.module}/my-key-pair.pem"
  file_permission = "0600"
}

resource "aws_key_pair" "generated_key" {
  key_name   = "my-key-pair"
  public_key = tls_private_key.example.public_key_openssh
}

module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = "10.0.0.0/16"
  subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones = ["us-east-1a", "us-east-1b"]
}

module "security_group" {
  source = "./modules/security_group"
  name = "allow_all_sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"
  instance_count = 1 
  ami = "ami-04b70fa74e45c3917"  
  instance_type = "t2.micro"
  subnet_ids = module.vpc.subnet_ids
  security_group_ids = [module.security_group.security_group_id]
  key_name = aws_key_pair.generated_key.key_name
}

module "cloudwatch" {
  source      = "./modules/cloudwatch"
  alert_email = "alyaabadr266@gmail.com"
  instance_id = module.ec2.instance_ids[0]  
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "alyaabadr-ivolve-finalproject-state"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.terraform_state.bucket

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "terraform_lock" {
  name         = "ivolve_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}


