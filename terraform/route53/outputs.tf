output "commit_me_a_record_id" {
  value = aws_route53_record.commit_me_a.id
}

output "commit_me_ns_record_id" {
  value = aws_route53_record.commit_me_ns.id
}

output "commit_me_soa_record_id" {
  value = aws_route53_record.commit_me_soa.id
}

output "commit_me_zone_id" {
  value = aws_route53_zone.commit_me_zone.id
}
