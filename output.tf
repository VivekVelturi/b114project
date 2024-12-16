output "VPC_id" {
  value = module.networking.VPC_id
}
output "privatesubnet" {
  value = module.networking.privatesubnet
}
output "publicsubnet" {
  value = module.networking.publicsubnet
}
output "internetgateway" {
  value = module.networking.internetgateway
}
output "routetable" {
  value = module.networking.routetable
}
output "EC2_instance" {
    value = module.server.EC2_instance
  }
output "Public_IP" {
value = module.server.Public_IP  
}
output "Private_IP" {
    value = module.server.Private_IP
  }