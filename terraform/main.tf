provider "cloudsmith" {
  api_key = var.cloudsmith_api_key
}

# QA Repository
resource "cloudsmith_repository" "qa" {
  name        = "acme-pypi-qa"
  namespace   = "atulya_s"
  description = "QA repository for staging Python packages"
}

# Production Repository
resource "cloudsmith_repository" "prod" {
  name        = "acme-pypi-prod"
  namespace   = "atulya_s"
  description = "Production repository for approved packages"
}