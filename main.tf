#creating backend
terraform {
  backend "s3" {
    bucket = "terraform-state-bucket-projectb114"
    key = "terraform/state.tf"
    region = "ap-south-1"
    dynamodb_table = "b114terraformstatelock"
  }
  
}
module networking {
    source = "./vpcmodule"
}
module "server" {
    source = "./servermodule" 
    publicsub = module.networking.publicsubnet
    vpcid = module.networking.VPC_id
}