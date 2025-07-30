resource "aws_instance" "web" {
    ami = var.ami_id
    instance_type = var.instance_name == "mongodb" ? "t3.small" : "t2.micro"

    tags = {
        Name = var.instance_name
    }
}

