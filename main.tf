module "vpc" {
    source ="./vpc"
    tags = local.project_tags
  
}
module "rds" {
    source = "./rds"
    tags = local.project_tags
    private_subnet1 = module.vpc.private_subnets1_id
    private_subnet2 = module.vpc.private_subnets2_id
    vpc_id = module.vpc.vpc_id
    vpc_cidr = "10.0.0.0/16"
    
}

module "ec2" {
 source = "./ec2"
 subnet_id = module.vpc.public_subnets1_id
    vpc_id = module.vpc.vpc_id
    tags =local.project_tags
  
}
