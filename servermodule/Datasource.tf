data "aws_ami" "ami_t" {
  most_recent = true

  filter {
    name = "name"
    values = ["amzn2-ami-kernel-5.10*"]
  }
  filter {
    name = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
}