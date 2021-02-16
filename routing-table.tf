resource "aws_default_route_table" "route-table-pub" {
  default_route_table_id = aws_vpc.foo.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw1.id
  }

  tags = {
    Name = "route-table-pub"
  }
}

resource "aws_route_table_association" "rt-assoc1" {
  subnet_id      = aws_subnet.subnet-pub-1.id
  route_table_id = aws_route_table.route-table-pub.id
}

resource "aws_route_table_association" "rt-assoc2" {
  subnet_id      = aws_subnet.subnet-pub-2.id
  route_table_id = aws_route_table.route-table-pub.id
}

resource "aws_route_table_association" "rt-assoc3" {
  subnet_id      = aws_subnet.subnet-pub-3.id
  route_table_id = aws_route_table.route-table-pub.id
}