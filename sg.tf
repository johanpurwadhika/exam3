## SECURITY GROUP FOR SSH
resource "aws_security_group" "sg-allow-ssh" {
  name        = "sg-allow-ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.main-vpc.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg-allow-ssh"
  }
}
##------------------------------------------------------

## SECURITY GROUP FOR HTTP
resource "aws_security_group" "sg-allow-http" {
  name        = "sg-allow-http"
  description = "Allow http inbound traffic"
  vpc_id      = aws_vpc.main-vpc.id

  ingress {
    description = "http from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg-allow-http"
  }
}
##------------------------------------------------------

## SECURITY GROUP FOR MYSQL
resource "aws_security_group" "sg-allow-mysql" {
  name        = "sg-allow-mysql"
  description = "Allow http inbound traffic"
  vpc_id      = aws_vpc.main-vpc.id

  ingress {
    description = "mysql from VPC"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg-allow-http"
  }
}
##------------------------------------------------------

## SECURITY GROUP FOR LOAD BALANCER
resource "aws_security_group" "sg-alb-http" {
  name        = "sg-alb-http"
  description = "Allow http inbound traffic alb"
  vpc_id      = aws_vpc.main-vpc.id

  ingress {
    description = "http from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sg-alb-http"
  }
}
##------------------------------------------------------