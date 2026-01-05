output "service_linked_role_names" {
  description = "(Deprecated) The name of the role"
  value = toset([
    for role in alicloud_resource_manager_service_linked_role.default : role.role_name
  ])
}

output "service_linked_role_with_service_names" {
  description = "The name of the role created by service name"
  value = toset([
    for role in alicloud_resource_manager_service_linked_role.slr_with_service_names : role.role_name
  ])
}


output "service_linked_role_with_role_names" {
  description = "The name of the role created by role name"
  value = toset([
    for role in alicloud_resource_manager_service_linked_role.slr_with_role_names : role.role_name
  ])
}

output "service_linked_role_with_service_ids" {
  description = "The name of the role created by service id"
  value = toset([
    for role in alicloud_resource_manager_service_linked_role.slr_with_service_ids : role.role_name
  ])
}



output "ram_role_names" {
  description = "(Deprecated) The name of the role"
  value = toset([
    for role in alicloud_ram_role.role : role.name
  ])
}

output "ram_role_names_with_service_names" {
  description = "The name of the role created by service name"
  value = toset([
    for role in alicloud_ram_role.sr_with_service_names : role.name
  ])
}

output "ram_role_names_with_role_names" {
  description = "The name of the role created by role name"
  value = toset([
    for role in alicloud_ram_role.sr_with_role_names : role.name
  ])
}

output "ram_role_names_with_self_roles" {
  description = "The name of the role created by self role"
  value = toset([
    for role in alicloud_ram_role.sr_with_self_roles : role.name
  ])
}