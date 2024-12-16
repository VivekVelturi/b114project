output "EC2_instance" {
    value = aws_instance.terraformproject.id
  }
output "Public_IP" {
value = aws_instance.terraformproject.public_ip  
}
output "Private_IP" {
    value = aws_instance.terraformproject.private_ip
  }