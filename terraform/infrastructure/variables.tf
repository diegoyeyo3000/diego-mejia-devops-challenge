variable "aws_region" {
  default = "us-east-1"
}

variable "cluster_name" {
  default = "devops-challenge"
}
variable "domain_name" {
  description = "Dominio principal"
  default     = "lenapp.click"
}

variable "subdomain" {
  description = "Subdominio para la API"
  default     = "api"
}
