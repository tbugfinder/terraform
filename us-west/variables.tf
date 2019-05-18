variable "region" {
  default = "us-west-2"
}

variable "vpc_id" {
  type    = "string"
  default = "vpc-8f094ce9"
}

variable "cidr_block" {
  type    =  "string"
  default = "172.31.0.0/16"
}
