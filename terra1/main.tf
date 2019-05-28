provider "aws" {
  region = "${var.region}"
}


module "net_setup" {

 source = "./network"
}

#module "compute_setup" {

#  source = "./compute"
#}

resource "aws_instance" "public_instance1" {
  ami           = "${lookup(var.amis, var.region)}"
  instance_type = "${var.instance}"
  vpc_security_group_ids = ["${module.net_setup.public_security_group}"]
  subnet_id = "${module.net_setup.public_subnet1}"

  tags = {
    Name = "Public Instance 1"
  }
}

resource "aws_instance" "public_instance2" {
  ami           = "${lookup(var.amis, var.region)}"
  instance_type = "${var.instance}"
  vpc_security_group_ids = ["${module.net_setup.public_security_group}"]
  subnet_id = "${module.net_setup.public_subnet2}"
  
  tags = { 
    Name = "Public Instance 2"
  }
}




