

output "vpc_route_table" {
  value = "${aws_vpc.my_vpc.default_route_table_id}"
}
