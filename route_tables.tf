#configure public route table, from public subnet to IGW
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.proj_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.proj_igw.id
  }
}

#configure private route table, from private subnet to public subnet
resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.proj_vpc.id
}
