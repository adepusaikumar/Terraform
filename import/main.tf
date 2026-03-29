import {
  to = aws_instance.import_example
  identity = {
    id = "i-09f024cfb1627f78a"
  }
}

resource "aws_instance" "import_example" {
  ami           = "ami-0c3389a4fa5bddaad"
  instance_type = "t3.micro"
  subnet_id     = "subnet-06bdb388c1d0b8095"
  security_groups = [
    "daws-allow-all"
  ]

  vpc_security_group_ids = [
    "sg-05f6d4e8dbe538e8e"
  ]

  tags = {
    Name = "terraform"
    Project = "roboshop"
  }
}