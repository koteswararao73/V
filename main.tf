provider "aws" {
    region = "us-east-1"  
}
resource "aws_instance" "koteswa" {
    ami = "ami-08a52ddb321b32a8c"
    instance_type = t2.micro
    key_name = "aws_key_pair.key.id"
    vpc_id   = "vpc-0a0379e470d547514"
    subnet_id = "subnet-036d83bfc74e674ac"
    security_groups = [ "sg-0132e4b6e77570d07" ]
    tags {
        Name = "gabbeiir"
    }
