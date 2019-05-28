variable "region" {
  default = "us-east-1"
}

variable "instance" {
  default = "t2.micro"
}

variable "amis" {
  type = "map"

  default = {
    "us-east-1" = "ami-2757f631"
  }
}



