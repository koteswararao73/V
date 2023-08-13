provider "aws" {
    region = "us-east-1" 
    access_key = "AKIAVF34AVATDPUHRGHK"
    secret_key = "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"
}
resource "aws_instance" "koteswa" {
    ami = "ami-08a52ddb321b32a8c"
    instance_type = "t2.micro"
    subnet_id = "subnet-036d83bfc74e674ac"
    security_groups = ["sg-0132e4b6e77570d07"]
    key_name = "aws_key_pair.key.id"
    tags = {
        Name = "gabbeiir"
    }
  
}
resource "aws_key_pair" "key" {
    key_name = "kote"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDJmtu4BSVYCZXE3ZuIxkaF7sol5P8CTBLu8m7bFUCKtwruShMTuHwnjOl0YRZy+SCtvireNebXhMKR/OOX7EdfMpYISu6+JoPFSDX3LbbX4ATJW53GaVarcVldlYquGYvnpMEPNC1acthoOs94lzsiL8unlJ+14xJE+n+LBW45/XPKUaslA0vs2rMKUrfyHZnguIIai31AbgplQ8zA9bCSxPmy6ZMEj/ifnfg/d2WQEf+bdG4Fop90viheuTxQW8OKOsen2UcPLrfsusfArkn4Ai8ex7MSnb5L0RYu9AWPiQ6GieIw8OSzvTaSqGKlZK9sa1C4B7Ojq9y/vz4YhIoCKLgpHCDSCdYlqXH9h7uT0Zxm4rd5shHIw5xpXfwIKbx8QJLqrUsOcL95szO/F+B1VaudN0EZC97XkHiF4AlPoXiw2nlWaROTRGDUL/U3GB+R+RYnrqQPolZANQQ02ccvVzqQhsscxU0BQ/LCfSeGwYD9+8cjN2ZTv3gwfu/cSX0= kotes@MSI"
  
}
