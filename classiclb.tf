resource "aws_elb" "classic-lb" {
  name               = "classic-lb-exam"
  availability_zones = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]

  listener {
    instance_port      = 80
    instance_protocol  = "http"
    lb_port            = 80
    lb_protocol        = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 5
    target              = "http:80/"
    interval            = 30

  }

  instances                   = [module.instance.id]
  cross_zone_load_balancing   = "true"
  idle_timeout                = 60
  connection_draining         = "true"
  connection_draining_timeout = 120

  tags = {
    Name = "classic-lb-exam"
  }
}