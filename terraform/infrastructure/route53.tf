data "aws_route53_zone" "this" {
  name         = "${var.domain_name}."
  private_zone = false
}

resource "aws_route53_record" "validation" {
  allow_overwrite = true

  zone_id = data.aws_route53_zone.this.zone_id

  name = tolist(aws_acm_certificate.api.domain_validation_options)[0].resource_record_name

  type = tolist(aws_acm_certificate.api.domain_validation_options)[0].resource_record_type

  records = [
    tolist(aws_acm_certificate.api.domain_validation_options)[0].resource_record_value
  ]

  ttl = 60
}
