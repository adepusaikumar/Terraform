# Map
/* variable "instances" {
    type = map
    default = {
        mongodb = "t3.micro"
        mysql = "t3.small"
        user = "t3.micro"
        shipping = "t3.small"
        frontend = "t3.micro"
    }
} */

# This should be converted into set
variable "instances" {
    type = list
    default = ["mongodb", "redis"]
}

variable "zone_id" {
  type = string
  default = "Z101804623RU7HOQEG0G3"
}

variable "domain_name" {
    default = "rajudevops.online"
}
