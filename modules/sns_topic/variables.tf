variable "name" {
  type = string
}

variable "email_address_list" {
  type = list(string)
}

variable "tags" {
  type    = map(string)
  default = {}
}
