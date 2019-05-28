output "public_security_group" {
  value = "${aws_security_group.public_sg.id}"
}

output "public_subnet1" {
  value = "${aws_subnet.public_subnet1.id}"
}

output "public_subnet2" {
  value = "${aws_subnet.public_subnet2.id}"
}
