output "VPC_id" {
  value = aws_vpc.vpc_t.id
}
output "privatesubnet" {
  value = aws_subnet.private.id
}
output "publicsubnet" {
  value = aws_subnet.public.id
}
output "internetgateway" {
  value = aws_internet_gateway.igw_t.id
}
output "routetable" {
  value = aws_route_table.publicroutetable.id
}