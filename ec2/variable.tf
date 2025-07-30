variable "sg_name" {
    type = string
    default = "Raju"
}


variable "cidr_blocks" {
    type = list 
    default = ["0.0.0.0/0"]
  
}

variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}
