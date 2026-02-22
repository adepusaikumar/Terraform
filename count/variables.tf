variable "zone_id" {
  type = string
  default = "Z101804623RU7HOQEG0G3"
}

variable "instances" {
  type = list(string)
  default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

variable "domain_name" {
    default = "rajudevops.online"
}


variable "fruits" {
    type = list(string)
    default = ["apple", "banana", "apple", "orange"]
}

variable "fruits_set" {
  type = set(string)
  default = ["apple", "banana", "apple", "orange"]
}