

provider "aws" {
  region     = "us-east-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "${var.cidr_block}"

  tags = {
    Name = "Renny VPC"
  }
}

resource "aws_internet_gateway" "my_ig" {

  vpc_id = "${aws_vpc.my_vpc.id}"

   tags = {
    Name = "Renny IG"
  }
}
