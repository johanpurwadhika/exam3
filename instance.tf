module "instance" {
  source = "https://github.com/johanpurwadhika/exam3/"

  INSTANCE_COUNT = 1
  AMI = ["ami-0c20b8b385217763f", "ami-0f86a70488991335e"]
  INSTANCE_TYPE   = "t2.micro"
  SECURITY_GROUPS = ["sg-0bb6689aa41b455bd", "sg-02c36909d5234b1b9"]
  KEYNAME = "jcde-key"
  USERDATA = "./userdata.txt"
  TAGNAME = "ubuntu-tf"

}