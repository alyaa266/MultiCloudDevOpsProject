variable "instance_count" {
  description = "Number of instances to deploy"
  type        = number
}

variable "ami" {
  description = "AMI to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs to deploy instances in"
  type        = list(string)
}

variable "security_group_ids" {
  description = "Security Group IDs"
  type        = list(string)
}

variable "key_name" {
  description = "Key pair name"
  type        = string
}




