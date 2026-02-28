# Map
variable "instances" {
    type = map
    default = {
        mongodb = "t3.micro"
        mysql = "t3.small"
        user = "t3.micro"
        shipping = "t3.small"
        frontend = "t3.micro"
    }
}

# This should be converted into set
/* ariable "instances" {
    type = list(string)
    default = ["mongodb", "redis", "frontend"]
} */

variable "zone_id" {
  type = string
  default = "Z101804623RU7HOQEG0G3"
}

variable "domain_name" {
    default = "rajudevops.online"
}

variable "instance_tags"{
  type=map
  default={
    Environment ="dev"
    Project = "backend"
  }
}

variable "common_tags"{
  default={
    Terraform = "true"
    Name = "functions-demo"
  }
}

variable "sg_tags"{
  default={
    Name="functions-demo"
  }
}