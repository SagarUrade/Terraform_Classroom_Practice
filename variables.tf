variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "TF VPC"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  description = "A list of CIDR blocks for the subnets"
  type        = list(string)
  default = [
    "10.0.0.0/24", # Subnet for web1
    "10.0.1.0/24", # Subnet for web2
    "10.0.2.0/24", # Subnet for db1
    "10.0.3.0/24"  # Subnet for db2
  ]
}

variable "subnet_names" {
  description = "A list of names for the subnets"
  type        = list(string)
  default = [
    "Application-1",
    "Application-2",
    "Database-1",
    "database-2"
  ]
}

variable "availability_zones" {
  description = "A list of availability zones to use for subnets"
  type        = list(string)
  default = [
    "ap-south-1a",
    "ap-south-1b"
  ]
}


