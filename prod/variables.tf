# public subnet ip addresses CIDR blocks
variable "public_subnet_cidr" {
  description = "public subnet ip addresses CIDR blocks"
  default = [
    "10.2.0.0/24"
  ]
}

# variable for environment tagging
variable "env" {
  default = "prod"
}
