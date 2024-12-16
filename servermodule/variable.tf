variable "instance" {
  description = "this is the instance type for ec2 server"
  type = string
  default = "t2.micro"
}
variable "publicsub" {
    description = "this value is obtianed form vpc module"
    type = string
  
}
variable "vpcid" {
  description = "this value is obtained from vpc module"
  type = string
}
variable "keyname" {
  description = "this key is for creation of ec2"
  type = string
  default = "linux114"
}
variable "autoassign_publicip" {
  description = "this coveys weather to assign public ip to enable it or not"
  type = bool
  default = true

}