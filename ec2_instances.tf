#configure the App instance in the public subnet
resource "aws_instance" "App" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  tags = {
    Name = "App"
  }
}

#configure the DB instance in the private subnet
resource "aws_instance" "DB" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_subnet.id
  tags = {
    Name = "DB"
  }
}
