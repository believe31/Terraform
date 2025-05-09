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
# variable "azone" {
# type = list(string)
#default = [ "ap-south-1a","ap-south-1b" ]

#}
variable "enable_nat_gateway" {
  type    = bool
  default = true

}
variable "single_nat_gateway" {
  type    = bool
  default = true

}
# EKS Cluster Input Variables
variable "cluster_name" {
  description = "Name of the EKS cluster. Also used as a prefix in names of related resources."
  type        = string
  default     = "eksdemo"
}

variable "cluster_service_ipv4_cidr" {
  description = "service ipv4 cidr for the kubernetes cluster"
  type        = string
  default     = null
}

variable "cluster_version" {
  description = "Kubernetes minor version to use for the EKS cluster (for example 1.21)"
  type        = string
  default     = null
}
variable "cluster_endpoint_private_access" {
  description = "Indicates whether or not the Amazon EKS private API server endpoint is enabled."
  type        = bool
  default     = false
}

variable "cluster_endpoint_public_access" {
  description = "Indicates whether or not the Amazon EKS public API server endpoint is enabled. When it's set to `false` ensure to have a proper private access with `cluster_endpoint_private_access = true`."
  type        = bool
  default     = true
}

variable "cluster_endpoint_public_access_cidrs" {
  description = "List of CIDR blocks which can access the Amazon EKS public API server endpoint."
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

# EKS Node Group Variables
## Placeholder space you can create if required
