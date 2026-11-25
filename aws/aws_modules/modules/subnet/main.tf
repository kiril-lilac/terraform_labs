resource "aws_subnet" "subnet" {
    vpc_id = var.vpc_id
    cidr_block = var.subnet_cidr
    availability_zone = var.availability_zone

    tags = {
        Name = var.subnet_name
    }
}

resource "aws_internet_gateway" "igw" {
    vpc_id = var.vpc_id

    tags = {
        Name = "${var.subnet_name}-igw"
    }
  
}

resource "aws_route_table" "rt" {
    vpc_id = var.vpc_id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.vpc_id
    }

    tags = {
        Name = "${var.subnet_name}-rt"
    }
}

resource "aws_route_table_association" "rta" {
    subnet_id = aws.subnet.subnet.vpc_id
    route_table_id = aws.route_table.rt.id
}