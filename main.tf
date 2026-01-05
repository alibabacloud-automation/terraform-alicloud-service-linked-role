locals {
  slr_with_service_names = toset(
    flatten(
      [
        for v in var.service_linked_role_with_service_names : lookup(var.service_linked_roles, v, [])
      ]
    )
  )
  slr_with_role_names = toset(
    [
      for v in var.service_linked_role_with_role_names : v if contains(keys(local.service_linked_roles), v)
    ]
  )

  slr_with_service_names_and_exclude = toset(
    [
      for v in local.slr_with_service_names : v if !contains(var.exclude_service_linked_role_with_role_names, v)
    ]
  )

  sr_with_service_names = toset(
    flatten(
      [
        for v in var.service_role_with_service_names : lookup(var.service_roles, v, [])
      ]
    )
  )

  sr_with_role_names = toset(
    [
      for v in var.service_role_with_role_names : v if contains(keys(local.service_roles), v)
    ]
  )

  sr_with_self_roles = {
    for r in var.service_role_with_self_roles : r.name => r
  }

  sr_with_service_names_and_exclude = toset(
    [
      for v in local.sr_with_service_names : v if !contains(var.exclude_service_role_with_role_names, v)
    ]
  )
}

resource "alicloud_ram_role" "sr_with_service_names" {
  for_each                    = local.sr_with_service_names_and_exclude
  role_name                   = each.key
  assume_role_policy_document = local.service_roles[each.key]["document"]
  description                 = local.service_roles[each.key]["description"]
}

resource "alicloud_ram_role_policy_attachment" "sr_with_service_names" {
  for_each    = local.sr_with_service_names_and_exclude
  policy_name = local.service_roles[each.key]["policy_name"]
  policy_type = "System"
  role_name   = each.key
  depends_on  = [alicloud_ram_role.sr_with_service_names]
}

resource "alicloud_ram_role" "sr_with_role_names" {
  for_each                    = local.sr_with_role_names
  role_name                   = each.key
  assume_role_policy_document = local.service_roles[each.key]["document"]
  description                 = local.service_roles[each.key]["description"]
}

resource "alicloud_ram_role_policy_attachment" "sr_with_role_names" {
  for_each    = local.sr_with_role_names
  policy_name = local.service_roles[each.key]["policy_name"]
  policy_type = "System"
  role_name   = each.key
  depends_on  = [alicloud_ram_role.sr_with_role_names]
}

resource "alicloud_ram_role" "sr_with_self_roles" {
  for_each                    = local.sr_with_self_roles
  role_name                   = each.value.name
  assume_role_policy_document = each.value.document
  description                 = each.value.description
}

resource "alicloud_ram_role_policy_attachment" "sr_with_self_roles" {
  for_each    = local.sr_with_self_roles
  policy_name = each.value.policy_name
  policy_type = each.value.policy_type
  role_name   = each.value.name
  depends_on  = [alicloud_ram_role.sr_with_self_roles]
}

resource "alicloud_resource_manager_service_linked_role" "slr_with_service_names" {
  for_each     = local.slr_with_service_names_and_exclude
  service_name = local.service_linked_roles[each.key]["id"]
}

resource "alicloud_resource_manager_service_linked_role" "slr_with_role_names" {
  for_each     = local.slr_with_role_names
  service_name = local.service_linked_roles[each.key]["id"]
}

resource "alicloud_resource_manager_service_linked_role" "slr_with_service_ids" {
  for_each     = toset(var.service_linked_role_with_service_ids)
  service_name = each.key
}
