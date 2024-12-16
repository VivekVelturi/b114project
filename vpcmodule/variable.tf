variable "vpc_cidr_block" {
  description = "This is the cidr block for vpc"
  type = string
  default = "143.10.0.0/16"
}
variable "privatesubnet_cidr_block" {
  description = "This is the cidr block for private subnet"
  type = string
  default = "143.10.0.0/24"
}
variable "privatesubnet_az" {
  description = "This is the availability zone for private subnet"
  type = string
  default = "ap-south-1a"
}
variable "publicsubnet_cidr_block" {
  description = "This is the cidr block for public subnet"
  type = string
  default = "143.10.1.0/24"
}
variable "publicsubnet_az" {
  description = "This is the availability zone for public subnet"
  type = string
  default = "ap-south-1b"
}