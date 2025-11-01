resource "aws_instance" "terraform" {
    count = length(var.instances)
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    
    tags = {
        Name = var.instances[count.index]
        Terraform = "true"
    }
}

resource "aws_security_group" "allow_all" {
    name        = "allow-all"
   
    ingress{
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]  
        
         }


    egress{
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }

 tags  =  {
    Name = "allow-all"
 }
}