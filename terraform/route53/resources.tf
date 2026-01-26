resource "aws_route53_record" "commit_me_a" {
  multivalue_answer_routing_policy = "false"
  name                             = "commit-me.com"
  records                          = ["3.39.214.196"]
  ttl                              = "300"
  type                             = "A"
  zone_id                          = aws_route53_zone.commit_me_zone.zone_id
}

resource "aws_route53_record" "commit_me_ns" {
  multivalue_answer_routing_policy = "false"
  name                             = "commit-me.com"
  records                          = ["ns-1230.awsdns-25.org.", "ns-1768.awsdns-29.co.uk.", "ns-517.awsdns-00.net.", "ns-68.awsdns-08.com."]
  ttl                              = "172800"
  type                             = "NS"
  zone_id                          = aws_route53_zone.commit_me_zone.zone_id
}

resource "aws_route53_record" "commit_me_soa" {
  multivalue_answer_routing_policy = "false"
  name                             = "commit-me.com"
  records                          = ["ns-1230.awsdns-25.org. awsdns-hostmaster.amazon.com. 1 7200 900 1209600 86400"]
  ttl                              = "900"
  type                             = "SOA"
  zone_id                          = aws_route53_zone.commit_me_zone.zone_id
}

resource "aws_route53_zone" "commit_me_zone" {
  comment                     = "HostedZone created by Route53 Registrar"
  enable_accelerated_recovery = "false"
  force_destroy               = "false"
  name                        = "commit-me.com"
}
