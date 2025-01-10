variable "vpc_name" {
  type = string
  default = "All"
  description = "vpc name"
}

variable "subnet_name" {
  type = list(string)
  default = [ "web1" ]
}