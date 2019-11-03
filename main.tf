provider "google" {
  region  = "${var.region}"
  project = "${var.project}"
}

provider "google-beta" {
  region  = "${var.region}"
  project = "${var.project}"
}

module "tfe-beta" {
  source           = "hashicorp/terraform-enterprise/google"
  version          = "0.1.0"
  credentials_file = "${var.creds}"
  region           = "${var.region}"
  zone             = "${var.zone}"
  project          = "${var.project}"
  domain           = "${var.domain}"
  dns_zone         = "${var.dns_zone}"
  public_ip        = "${var.public_ip}"
  certificate      = "https://www.googleapis.com/compute/v1/project/terraform-test/global/sslCertificates/tfe"
  ssl_policy       = "${var.ssl_policy}"
  subnet           = "${var.subnet}
  frontend_dns     = "${var.frontend_dns}"

  primary_count   = "3"
  secondary_count = "2"

  license_file = "${var.license_file}
  
  image_family = "${var.image_family}"
  #image_family = "rhel-7-v20190729"

  gcs_bucket          = "${var.gcs_bucket}"
  postgresql_address  = "${var.postgresql_address}"
  postgresql_database = "${var.postgresql_database}
  postgresql_user     = "${var.postgresql_user}
  #Base64 encoded password
  postgresql_password = "${var.postgresql_password}"
}

output "tfe-beta" {
  value = {
    application_endpoint         = "${module.tfe-beta.application_endpoint}"
    application_health_check     = "${module.tfe-beta.application_health_check}"
    installer_dashboard_password = "${module.tfe-beta.installer_dashboard_password}"
    installer_dashboard__url     = "${module.tfe-beta.installer_dashboard_url}"
    primary_public_ip            = "${module.tfe-beta.primary_public_ip}"
  }
}
