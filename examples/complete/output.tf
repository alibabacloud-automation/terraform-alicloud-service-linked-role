output "csk_role_names" {
  description = "The name of the role"
  value       = module.csk.ram_role_names
}

output "hdr_role_names" {
  description = "The name of the role"
  value       = module.hdr.service_linked_role_names
}
