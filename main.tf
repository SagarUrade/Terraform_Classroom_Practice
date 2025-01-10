resource "aws_vpc" "base" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "TF VPC"
  }
}

resource "aws_subnet" "web1" {
  vpc_id            = aws_vpc.base.id
  cidr_block        = "10.100.0.0/24"
  availability_zone = "ap-south-1b"
  tags = {
    Name = "web-1"
  }
  depends_on = [aws_vpc.base]
}
resource "aws_subnet" "web2" {
  vpc_id            = aws_vpc.base.id
  cidr_block        = "10.100.1.0/24"
  availability_zone = "ap-south-1b"
  tags = {
    Name = "web-2"
  }
  depends_on = [aws_vpc.base]
}
resource "aws_subnet" "db1" {
  vpc_id            = aws_vpc.base.id
  availability_zone = "ap-south-1a"
  cidr_block        = "10.100.3.0/24"
  tags = {
    Name = "db-1"
  }
  depends_on = [aws_vpc.base]
}
resource "aws_subnet" "db2" {
  vpc_id            = aws_vpc.base.id
  cidr_block        = "10.100.4.0/24"
  availability_zone = "ap-south-1b"
  tags = {
    Name = "db-2"
  }
  depends_on = [aws_vpc.base]
}

