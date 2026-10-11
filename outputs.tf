output "rds_certificates_id" {
  description = "Map of id values across all rds_certificates, keyed the same as var.rds_certificates"
  value       = { for k, v in aws_rds_certificate.rds_certificates : k => v.id if v.id != null && length(v.id) > 0 }
}
output "rds_certificates_certificate_identifier" {
  description = "Map of certificate_identifier values across all rds_certificates, keyed the same as var.rds_certificates"
  value       = { for k, v in aws_rds_certificate.rds_certificates : k => v.certificate_identifier if v.certificate_identifier != null && length(v.certificate_identifier) > 0 }
}
output "rds_certificates_region" {
  description = "Map of region values across all rds_certificates, keyed the same as var.rds_certificates"
  value       = { for k, v in aws_rds_certificate.rds_certificates : k => v.region if v.region != null && length(v.region) > 0 }
}

