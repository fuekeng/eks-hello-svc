/*resource "aws_route53_record" "eks_record" {
  zone_id = data.aws_route53_zone.zone.zone_id
  name    = "hello.${var.environment}.${var.domain_name}"
  type    = "A"
  alias {
    name                   = data.aws_lb.lb.dns_name
    zone_id                = data.aws_lb.lb.zone_id
    evaluate_target_health = true
  }
}

data "aws_lb" "lb" {
  name = "${var.environment}-microservices-alb"  
}
*/


# This file is currently commented out because it requires specific AWS resources (like an ALB and Route 53 zone) to be set up.
# data "aws_route53_zone" "zone" {
#   name = "devops4solutions.com"  # Replace with your domain
# }
