resource "aws_acm_certificate" "api" {
  domain_name       = "${var.subdomain}.${var.domain_name}"
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Project = "devops-challenge"
  }
}

resource "aws_acm_certificate_validation" "api" {
  certificate_arn = aws_acm_certificate.api.arn

  validation_record_fqdns = [
    aws_route53_record.validation.fqdn
  ]
}
