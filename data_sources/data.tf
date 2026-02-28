data "aws_instances" "test" {
  instance_tags = {
    Role = "TERRAFORM-MAIN-INSTANCE-PYTHON"
  }

  filter {
    name   = "AMI name"
    values = ["Redhat-9-DevOps-Practice"]
  }

}
