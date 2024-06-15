variable "region" {
  description = "The AWS region to deploy resources in."
  default     = "us-east-1"
}

variable "alarm_email" {
  description = "The email address to send CloudWatch alarm notifications to."
  type        = string
  default     = "alyaabadr266@gmail.com"
}



