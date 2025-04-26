variable "region" {
  type        = string
  description = "in this vaiable we have defined the region"

}
variable "profile" {
  type = string

  description = "in this vairable have access key and secret key"

}
variable "vpc-name" {
  type = string
  #default = "vpc-prac"

}
variable "cidr" {
  type = string
  #default = "10.0.0.0/16"

}
variable "pusubnets" {
  type = list(string)
  #default = ["10.0.1.0/24", "10.0.2.0/24"]

}
variable "prsubnets" {
  type = list(string)
  #default = ["10.0.101.0/24", "10.0.102.0/24"]

}
variable "azone" {
  type = list(string)
  #default = [ "ap-south-1a","ap-south-1b" ]

}
variable "enable_nat_gateway" {
  type    = bool
  default = true

}
variable "single_nat_gateway" {
  type    = bool
  default = true

}
