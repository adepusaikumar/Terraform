variable "ami_image" {
  type = string
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  type = string
  default = "t3.small" # It overrides the default value from ec2.auto.tfvars 
}

variable "ec2_tags" {
  type = map
  default = {
    Name = "Roboshop"
    Environment = "dev"
  }
}

variable "sg_name" {
  type = string
  default = "allow-all-terraform"
}

variable "sg_description" {
  default = "Allow TLS inbound traffic and all outbound traffic"
  type = string
}

variable "sg_from_port" {
  type = number
  default = 0
}

variable "sg_to_port" {
  type = number
  default = 0
  
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
  
}
variable "sg_tags" {
  type = map
  default = {
    Name = "allow-all-terraform"
  }
}