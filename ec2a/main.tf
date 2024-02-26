resource "aws_instance" "Demo_ec2" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
  key_name = "week7d2"
      
  tags = {
    Name = "Demo_ec2"
    Team = "Cloud"
    env  = "dev"
  }
  user_data = file("install.sh")
}
 resource "aws_ebs_volume" "Demo_ec2" {
  availability_zone = aws_instance.Demo_ec2.availability_zone
  size              = 10

  tags = {
    Name = "Demo_ec2_volume"
  }
}
  resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.Demo_ec2.id
  instance_id = aws_instance.Demo_ec2.id
}


