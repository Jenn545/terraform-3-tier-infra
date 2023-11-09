output "vpc_id" {
    value = aws_vpc.main.id
}
output "public_subnets1_id" {
    value = aws_subnet.public_subnet1.id
}
output "public_subnets2_id" {
    value = aws_subnet.public_subnet2.id
}
output "private_subnets1_id" {
    value = aws_subnet.private_subnet1.id
}
output "private_subnets2_id" {
    value = aws_subnet.private_subnet2.id
}
