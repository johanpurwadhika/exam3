resource "aws_subnet" "subnet-pub-1" {
  vpc_id     = aws_vpc.main-vpc.id
  cidr_block = "10.0.1.0/16"
  availability_zone = "ap-southeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-pub-1"
  }
}

resource "aws_subnet" "subnet-pub-2" {
  vpc_id     = aws_vpc.main-vpc.id
  cidr_block = "10.0.1.0/16"
  availability_zone = "ap-southeast-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-pub-2"
  }
}

resource "aws_subnet" "subnet-pub-3" {
  vpc_id     = aws_vpc.main-vpc.id
  cidr_block = "10.0.1.0/16"
  availability_zone = "ap-southeast-1c"
  map_public_ip_on_launch = true

  tags = {
    Name = "subnet-pub-3"
  }
}