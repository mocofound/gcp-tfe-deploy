variable "postgresql_user" {
default = ""
}

variable "image_family" {}

variable "creds" {}

variable "gcs_bucket" {
default=""
}

variable "gcs_credentials" {
default=""
}

variable "gcs_project" {
default=""
}

variable "project" {}

variable "public_ip" {}

variable "frontend_dns" {}

variable "region" {}

variable "postgresql_database" {}

variable "postgresql_password" {}

variable "license_file" {}

variable "postgresql_address" {}

variable "dns_zone" {}

variable "zone" {}

variable "domain" {}

variable "ssl_policy" {}

variable "encryption_password" {}

variable "subnet" {}

variable "primary_count" {}

variable "secondary_count" {}

variable "certificate" {}

variable "ca_bundle_url" {
default=""
}
