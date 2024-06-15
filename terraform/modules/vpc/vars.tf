variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "subnet_cidrs" {
  description = "The CIDR blocks for the subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "The availability zones for the subnets"
  type        = list(string)
}

