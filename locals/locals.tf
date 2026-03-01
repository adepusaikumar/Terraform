locals {
    created_by = "${var.environment}-${var.created_by}"
    ami_id = "ami-0220d79f3f480ecf5"
    instance_tags = merge(var.common_tags, var.instance_tags)
}