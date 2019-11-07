output "tfe-beta" {
  value = {
    application_endpoint         = "${module.tfe-beta.application_endpoint}"
    application_health_check     = "${module.tfe-beta.application_health_check}"
    installer_dashboard_password = "${module.tfe-beta.installer_dashboard_password}"
    installer_dashboard__url     = "${module.tfe-beta.installer_dashboard_url}"
    primary_public_ip            = "${module.tfe-beta.primary_public_ip}"
    encryption_password          = "${module.tfe-beta.encryption_password}"
  }
}
