locals {

  env                 = "dev"
  owner               = "Abhishek"
  private_subnet_tags = "prsubnets"
  public_subnet_tags  = "pusubnets"
  bastion             = "Bastion-Ec2-Machine"
  eip                 = "ElasticIP-bastion"
  tags = {

    Environment        = local.env
    Owner              = local.owner
    private_subnet_tag = local.private_subnet_tags
    public_subnet_tags = local.public_subnet_tags
    bastion            = local.bastion
    eip                = local.bastion

  }
}
