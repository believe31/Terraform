locals {
  env                 = "dev"
  owner               = "Abhishek"
  private_subnet_tags = "prsubners"
  public_subnet_tags  = "pusubnets"
  tags = {
    Environment        = local.env
    Owner              = local.owner
    private_subnet_tag = local.private_subnet_tags
    public_subnet_tags = local.public_subnet_tags
  }
}
