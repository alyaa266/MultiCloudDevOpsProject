resource "aws_instance" "app" {
  count                       = var.instance_count
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = element(var.subnet_ids, count.index)
  associate_public_ip_address = true
  security_groups             = var.security_group_ids
  key_name                    = "my-key-pair"

  tags = {
    Name = "app-instance-${count.index}"
  }
}




