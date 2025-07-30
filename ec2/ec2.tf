resource "aws_instance" "roboshop" {
    ami = var.ami_id
    instance_type = "t3.micro"
    vpc_security_group_ids = aws_security_group.sg.id 

    tags = {
        Name = "hellogowtham"
    }

}

resource "aws_security_group" "sg" {
    name = var.sg_name

    ingress {
        description = "this is roboshop"
        from_port   = 0
        to_port     = 0
        protocol    = "tcp"
        cidr_blocks = var.cidr_blocks
    }
     egress {
        description = "this is roboshop"
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      Name = "myname"
    }
}