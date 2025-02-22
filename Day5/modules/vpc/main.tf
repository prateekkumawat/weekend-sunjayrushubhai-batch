resource "aws_vpc" "dev" {
  cidr_block = var.vpc_network_cidr
  tags = { 
    Name = var.project_name
  }
}

resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.dev.id
  cidr_block              = var.vpc_subnet_cidr[0]
  availability_zone       = var.vpc_az[0]
  map_public_ip_on_launch = true

  tags = {
    Name =  "${var.project_name}-public-az1"
  }
}

resource "aws_subnet" "private" {
  vpc_id                  = aws_vpc.dev.id
  cidr_block              = var.vpc_subnet_cidr[1]
  availability_zone       = var.vpc_az[1]
  map_public_ip_on_launch = true

  tags = {
    Name =  "${var.project_name}-private-az1"
  }
}


resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.dev.id
  tags = {
    Name = "${var.project_name}-igw"
  }
}

resource "aws_route_table" "publicrt" {
  vpc_id = aws_vpc.dev.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "${var.project_name}-public-rt"
  }
}


resource "aws_route_table_association" "rtasspublic1" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.publicrt.id
}