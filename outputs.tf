output "terraform-enterprise" {
  value = {
    application_endpoint         = "${module.terraform-enterprise.application_endpoint}"
    application_health_check     = "${module.terraform-enterprise.application_health_check}"
    installer_dashboard_password = "${module.terraform-enterprise.installer_dashboard_password}"
    installer_dashboard__url     = "${module.terraform-enterprise.installer_dashboard_url}"
    primary_public_ip            = "${module.terraform-enterprise.primary_public_ip}"
    encryption_password          = "${module.terraform-enterprise.encryption_password}"
  }
}
