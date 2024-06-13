
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.vpc.subnet_ids
}

output "security_group_id" {
  value = module.security_group.security_group_id
}

output "instance_ids" {
  value = module.ec2.instance_ids
}

output "public_ips" {
  value = module.ec2.public_ips
}

output "private_ips" {
  value = module.ec2.private_ips
}

output "key_pair_name" {
  value = aws_key_pair.generated_key.key_name
}

output "private_key_path" {
  value = local_file.private_key.filename
}


