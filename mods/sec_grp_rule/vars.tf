variable "type" {
  default = "ingress"
}
variable "from_port" {}
variable "to_port" {}
variable "protocol" {
  default = "tcp"
}
variable "security_group_id" {}
