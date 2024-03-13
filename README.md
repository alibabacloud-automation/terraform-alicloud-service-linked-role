# terraform-alicloud-service-linked-role


English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-service-linked-role/blob/master/README-CN.md)

Terraform Module used to create several service linked roles automatically Alibaba Cloud.

These types of resources are supported:

* [alicloud_resource_manager_service_linked_role](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/resource_manager_service_linked_role)

## Terraform versions

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.159.0 |

## Usage

```hcl

variable "hbr_services" {
  type = list(string)
  default = [
    "dr.hbr.aliyuncs.com",
    "ecsbackup.hbr.aliyuncs.com",
    "ossbackup.hbr.aliyuncs.com",
    "nasbackup.hbr.aliyuncs.com",
    "csgbackup.hbr.aliyuncs.com",
    "vaultencryption.hbr.aliyuncs.com",
    "otsbackup.hbr.aliyuncs.com"
  ]
}

module "hbr" {  
  source  = "terraform-alicloud-modules/service-linked-role/alicloud"
  services = var.hbr_services
}

variable "kubernetes_roles" {
  type    = list(object({
    role_name        = string
    role_document    = string
    role_description = string
    policy_name      = string
  }))
  default = [
    {
      role_name        = "AliyunCSManagedLogRole"
      role_document    = "{\"Statement\":[{\"Action\":\"sts:AssumeRole\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":[\"cs.aliyuncs.com\"]}}],\"Version\":\"1\"}"
      role_description = "容器服务(CS)Kubernetes集群日志组件使用此角色来访问您在其他云产品中的资源"
      policy_name      = "AliyunCSManagedLogRolePolicy"
    }
  ]
}


module "csk" {
  source  = "terraform-alicloud-modules/service-linked-role/alicloud"
  roles               = var.kubernetes_roles
}
```

## Examples

* [Operation Orchestration Service example](https://github.com/terraform-alicloud-modules/terraform-alicloud-service-linked-role/tree/master/examples/oos)
* [Event Bridge example](https://github.com/terraform-alicloud-modules/terraform-alicloud-service-linked-role/tree/master/examples/eventbridge)
* [Container Service for Kubernetes example](https://github.com/terraform-alicloud-modules/terraform-alicloud-service-linked-role/tree/master/examples/container-service-kubernetes)


Authors
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

License
----
 MIT Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/terraform-providers/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://www.terraform.io/docs/providers/alicloud/index.html)
* [Service-linked roles](https://www.alibabacloud.com/help/en/doc-detail/160674.html)