variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "sg_name" {
  type    = string
  default = "web-sg"
}

variable "ssh_port" {
  type    = number
  default = 22
}

variable "http_port" {
  type    = number
  default = 80
}

variable "allowed_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami_id" {
  type    = string
  default = "ami-04808bdb94be6720e"
}