variable "vpc_name" {
  description = "Give your VPC Name"
  type        = string
  default     = "myvpc"
}

variable "vpc_cidr_block" {
  description = "Give your VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_az" {
  description = "Give your Az's"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}

variable "public_subnet_cidr" {
  description = "Give your Public subnet CIDR"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]

}

variable "private_subnet_cidr" {
  description = "Give your Public subnet CIDR"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]

}

variable "database_subnet_cidr" {
  description = "Give your Public subnet CIDR"
  type        = list(string)
  default     = ["10.0.151.0/24", "10.0.152.0/24"]

}
# VPC Create Database Subnet Group (True / False)
variable "vpc_create_database_subnet_group" {
  description = "VPC Create Database Subnet Group"
  type        = bool
  default     = true
}

# VPC Create Database Subnet Route Table (True or False)
variable "vpc_create_database_subnet_route_table" {
  description = "VPC Create Database Subnet Route Table"
  type        = bool
  default     = true
}


# VPC Enable NAT Gateway (True or False) 
variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type        = bool
  default     = true
}

# VPC Single NAT Gateway (True or False)
variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone to save costs during our demos"
  type        = bool
  default     = true
}