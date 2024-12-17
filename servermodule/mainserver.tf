# security group creation
resource "aws_security_group" "securitygroup_t" {
  name = "securitygroup_terraform"
  description = "security gorup for ec2 server"
  vpc_id = var.vpcid
  
# inbound rules
ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
}
ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
}
ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
}
ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
}

# outboundrules
egress{
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [ "0.0.0.0/0" ]
}
tags = {
    name = "securitygroup_t"
}
}

# Creation of elastic ip
resource "aws_eip" "eip_t" {
  instance = aws_instance.terraformproject.id
  domain = "vpc"

  tags = {
    Name = "Web Server Elastic IP"
  }
}

resource "aws_instance" "terraformproject" {
  ami = data.aws_ami.ami_t.id
  instance_type = var.instance
  subnet_id = var.publicsub
  vpc_security_group_ids = [ aws_security_group.securitygroup_t.id ]
  key_name = var.keyname
  associate_public_ip_address = var.autoassign_publicip
  root_block_device {
    
    volume_type = "gp3"
    volume_size = 10
    delete_on_termination = true
  }
  tags = {
    Name = "terraformproject"
  }

}