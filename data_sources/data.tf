data "aws_instance" "example" {
  instance_tags = {
    Name = "TERRAFORM-MAIN-INSTANCE-PYTHON"
  }

  filter {
    name   = "tag:Name"
    values = ["TERRAFORM-MAIN-INSTANCE-PYTHON"]
  }
  filter{
    name = "instance-id"
    values=["i-0d5bdca8150790a28"]
  }

}

data "aws_instances" "test" {

  instance_state_names = ["running", ]
}

output "test" {
  value = data.aws_instances.test
}