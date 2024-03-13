module "csk" {
  source = "../../"
  roles  = var.kubernetes_roles
}

module "hdr" {
  source   = "../../"
  services = var.hdr_services
}
