locals{
    instance_type = "t3.micro"
    common_name = "${var.prject}-${var.environment}" # roboshop-dev
    ami_id = data.aws_ami.joindevops.id
    ec2_tags = merge(
      var.common_tags,
      {
        Name = "${local.common_name}-local-demo"
      }
    )
}