resource "aws_instance" "this" {
  count                     = var.INSTANCE_COUNT

  ami                       = var.AMI
  instance_type             = var.INSTANCE_TYPE
  vpc_security_group_ids    = var.SECURITY_GROUPS
  key_name                  = var.KEYNAME
  user_data                 = file(var.USERDATA)

  tags = {
    "Name" = format("%s%d", var.TAGNAME, count.index)
  }
}