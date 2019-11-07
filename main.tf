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
  #version          = "0.1.1"
  credentials_file = "${var.creds}"
  region           = "${var.region}"
  zone             = "${var.zone}"
  project          = "${var.project}"
  domain           = "${var.domain}"
  dns_zone         = "${var.dns_zone}"
  public_ip        = "${var.public_ip}"
  certificate      = "${var.certificate}"
  ssl_policy       = "${var.ssl_policy}"
  subnet           = "${var.subnet}"
  frontend_dns     = "${var.frontend_dns}"
  encryption_password = "${var.encryption_password}"
  ca_bundle_url = "${var.ca_bundle_url}"
  primary_count   = "${var.primary_count}"
  secondary_count = "${var.secondary_count}"

  license_file = "${var.license_file}"

  image_family = "${var.image_family}"
  #image_family = "rhel-7-v20190729"
  primary_machine_type="n1-standard-4"
  secondary_machine_type="n1-standard-4"

  ##gcs_project         = "${var.gcs_project}"
  gcs_bucket          = "${var.gcs_bucket}"
  #gcs_credentials     = "${var.gcs_credentials}"
  postgresql_address  = "${var.postgresql_address}"
  postgresql_database = "${var.postgresql_database}"
  postgresql_user     = "${var.postgresql_user}"
  #Base64 encoded password
  postgresql_password = "${var.postgresql_password}"
}
