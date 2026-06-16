module "s3" {
  source = "../../modules/s3"

  bucket_name = var.bucket_name
  environment = var.environment
}

module "vpc" {
  source = "../../modules/vpc"

  vpc_name = var.vpc_name
  vpc_cidr = "10.0.0.0/16"

  private_subnet_cidrs = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24"
  ]

  azs = [
    "ap-south-1a",
    "ap-south-1b",
    "ap-south-1c"
  ]
}

module "eks" {
  source = "../../modules/eks"

  aks_name    = var.aks_name
  environment = var.environment
  vpc_id      = module.vpc.vpc_id
  subnet_ids  = module.vpc.private_subnet_ids
}
