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
    default = ["mongodb", "redis", "frontend"]
}

variable "zone_id" {
  type = string
  default = "Z101804623RU7HOQEG0G3"
}

variable "domain_name" {
    default = "rajudevops.online"
}

variable "ingress_rules"{
    type=list

    default = [
    {
        description = "Allow SSH"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    {
        description = "Allow HTTP"
        from_port   = 443
        to_port     = 443
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    
    ]
}