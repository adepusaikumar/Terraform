data "aws_instance" "example" {
  instance_tags = {
    Name = "TERRAFORM-MAIN-INSTANCE-PYTHON"
  }

  filter {
    name   = "tag:Name"
    values = ["TERRAFORM-MAIN-INSTANCE-PYTHON"]
  }

}

data "aws_instances" "test" {

  instance_state_names = ["running", "stopped"]
}

output "test" {
  value = data.aws_instances.test
}