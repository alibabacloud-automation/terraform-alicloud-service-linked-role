# terraform-alicloud-service-linked-role
本 Module 用于管理阿里云产品服务关联角色和服务角色。

本 Module 支持创建以下资源:

* [alicloud_resource_manager_service_linked_role](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/resource_manager_service_linked_role)
* [alicloud_ram_role](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ram_role)
* [alicloud_ram_role_policy_attachment](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ram_role_policy_attachment)

## Terraform 版本

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.159.0 |

## 用法

<div style="display: block;margin-bottom: 40px;"><div class="oics-button" style="float: right;position: absolute;margin-bottom: 10px;">
  <a href="https://api.aliyun.com/terraform?source=Module&activeTab=document&sourcePath=terraform-alicloud-modules%3A%3Aservice-linked-role&spm=docs.m.terraform-alicloud-modules.service-linked-role" target="_blank">
    <img alt="Open in AliCloud" src="https://img.alicdn.com/imgextra/i1/O1CN01hjjqXv1uYUlY56FyX_!!6000000006049-55-tps-254-36.svg" style="max-height: 44px; max-width: 100%;">
  </a>
</div></div>

### 服务关联角色
#### 通过服务名称创建服务关联角色
可以通过指定云服务的名称（如 ack_one, adb, alikafka 等）来创建服务关联角色：
```hcl
module "slr-with-service-name" {
  source = "terraform-alicloud-modules/service-linked-role/alicloud"
  service_linked_role_with_service_names = [
    "ack_one",
    "actiontrail",
    "alidns",
    "adb",
    "gpdb",
    "ddos_bgp",
    "api_gateway",
    "alb"
  ]
}
```
如果不想创建某个云服务下的所有关联角色，或者某些服务关联角色已经存在了，那么可以通过指定参数 `exclude_service_linked_role_with_role_names` 来跳过：
```hcl
module "slr-with-service-name" {
  source = "terraform-alicloud-modules/service-linked-role/alicloud"
  service_linked_role_with_service_names = [
    "ack_one",
    "actiontrail",
    "alidns",
    "adb",
    "gpdb",
    "ddos_bgp",
    "api_gateway",
    "alb"
  ]
  exclude_service_role_with_role_names = [
    "AliyunServiceRoleForApiGatewayConnectUserVpc",
    "AliyunServiceRoleForApigatewayPutEventsToEventBridge",
    "AliyunServiceRoleForApiGatewayIntegrateWithMicroservices"
  ]
}
```
#### 通过角色名称创建服务关联角色
可以通过指定已知的服务关联角色的名称来创建服务关联角色：
```hcl
module "slr-with-role-name" {
  source = "terraform-alicloud-modules/service-linked-role/alicloud"
  service_linked_role_with_role_names = [
    "AliyunServiceRoleForAlikafkaConnector",
    "AliyunServiceRoleForAlikafkaInstanceEncryption",
    "AliyunServiceRoleForAlikafka",
    "AliyunServiceRoleForAlikafkaETL"
  ]
}
```
#### 通过服务标识创建服务关联角色
可以通过指定云服务的标识（如 "adcp.aliyuncs.com", "actiontrail.aliyuncs.com" 等）来创建服务关联角色：
```hcl
module "slr-with-service-ids" {
  source = "terraform-alicloud-modules/service-linked-role/alicloud"
  service_linked_role_with_service_ids = [
    "network-insights.ecs.aliyuncs.com",
    "workbench.ecs.aliyuncs.com"
  ]
}
```
### 服务角色
#### 通过云服务名称创建服务角色
可以通过指定云服务的名称（如 ack_one, adb, alikafka 等）来创建服务角色：
```hcl
module "sr-with-service-name" {
  source = "terraform-alicloud-modules/service-linked-role/alicloud"
  service_role_with_service_names = [
    "ack_one",
    "actiontrail",
    "alikafka",
    "alidns",
    "adb",
  ]
}
```
如果不想创建某个云服务下的所有服务角色，或者某些服务角色已经存在了，那么可以通过指定参数 `exclude_service_role_with_role_names` 来跳过：
```hcl
module "sr-with-service-name" {
  source = "terraform-alicloud-modules/service-linked-role/alicloud"
  service_role_with_service_names = [
    "ack_one",
    "actiontrail",
    "alikafka",
    "alidns",
    "adb",
  ]
  exclude_service_role_with_role_names = [
    "AliyunAnalyticDBAccessingDTSRole",
    "AliyunAnalyticDBAccessingLogRole"
  ]
}
```
#### 通过角色名称创建服务角色
可以通过指定已知的服务关联角色的名称来创建服务角色：
```hcl
module "sr-with-role-name" {
  source = "terraform-alicloud-modules/service-linked-role/alicloud"
  service_role_with_role_names = [
    "AliyunCSDefaultRole",
    "AliyunCISDefaultRole",
    "AliyunCSServerlessKubernetesRole",
    "AliyunCSKubernetesAuditRole",
    "AliyunCSManagedAcrRole"
  ]
}
```
#### 通过自定义的角色实体创建服务角色
可以自定义服务角色，此时需要指定角色名称，描述，实体，所要绑定的权限等
```hcl
module "slr-with-self-defined-roles" {
  source = "terraform-alicloud-modules/service-linked-role/alicloud"
  service_role_with_self_roles = [
    {
      name        = "AliyunARMSAccessingECSRole"
      description = "The ARMS will use this role to access your resources in other services."
      policy_type = "System"
      policy_name = "AliyunARMSAccessingECSRolePolicy"
      document    = <<EOF
          {
            "Statement": [
              {
                "Action": "sts:AssumeRole",
                "Effect": "Allow",
                "Principal": {
                  "Service": [
                    "arms.aliyuncs.com"
                  ]
                }
              }
            ],
            "Version": "1"
          }
        EOF
    },
    {
      name        = "AliyunARMSDefaultRole"
      description = "The ARMS will use this role to access your resources in other services."
      policy_name = "AliyunARMSRolePolicy"
      policy_type = "System"
      document    = <<EOF
          {
            "Statement": [
              {
                "Action": "sts:AssumeRole",
                "Effect": "Allow",
                "Principal": {
                  "Service": [
                    "arms.aliyuncs.com"
                  ]
                }
              }
            ],
            "Version": "1"
          }
        EOF
    }
  ]
}
```

## 示例

* [Complete service linked role example](https://github.com/terraform-alicloud-modules/terraform-alicloud-service-linked-role/tree/master/examples/complete-slr)
* [Complete service role example](https://github.com/terraform-alicloud-modules/terraform-alicloud-service-linked-role/tree/master/examples/complete-sr)

## 注意
### 避免错误 EntityAlreadyExists.Role
如果在使用本 Module 之前使用云产品自动化开通的 Module [terraform-alicloud-enable](https://registry.terraform.io/modules/terraform-alicloud-modules/enable/alicloud/latest) 开通了如下的服务，
那么这些服务在开通的同时会同步创建某些服务关联角色，因此在使用当前这个 Module 的时候，如果遇到 `EntityAlreadyExists.Role` 错误，
可通过设置参数 `exclude_service_role_with_role_names` 来跳过重复创建的问题。

| 开通的服务名称                             | 同步创建的服务关联角色                     |
|-------------------------------------|---------------------------------|
| alicloud_cen_transit_router_service | AliyunServiceRoleForCEN         |
| alicloud_privatelink_service        | AliyunServiceRoleForPrivatelink |
| alicloud_log_service                | AliyunServiceRoleForSLSAudit    |

### Destroy Failure

当前，删除如下的服务关联角色可能会失败，一旦出现这种情况，可提交 Issue 或者工单联系我们。

| 服务明晨          | 可能会删除失败的服务关联角色                                                                                                                                                                                                                                     |
|---------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| api_gateway   | AliyunServiceRoleForApiGateway<br/>AliyunServiceRoleForApiGatewayConnectUserVpc<br/>AliyunServiceRoleForApiGatewayIntegrateWithMicroservices<br/>AliyunServiceRoleForApiGatewayMonitoring<br/>AliyunServiceRoleForApigatewayPutEventsToEventBridge |
| bss_open_api  | AliyunServiceRoleForBssOpenApi                                                                                                                                                                                                                     |
| cdn           | AliyunServiceRoleForCDNLogDelivery                                                                                                                                                                                                                 |
| dcdn          | AliyunServiceRoleForDCDNLogDelivery                                                                                                                                                                                                                |
| ecs           | AliyunServiceRoleForECSArchiving                                                                                                                                                                                                                   |
| ehpc          | AliyunServiceRoleForEHPCManagedNetwork                                                                                                                                                                                                             |
| eflo          | AliyunServiceRoleForEfloCnp<br/>AliyunServiceRoleForEfloVcc                                                                                                                                                                                        |
| elasticsearch | AliyunServiceRoleForElasticsearch                                                                                                                                                                                                                  |
| fc            | AliyunServiceRoleForFC                                                                                                                                                                                                                             |
| iot           | AliyunServiceRoleForIoTCloudSource                                                                                                                                                                                                                 |
| kms           | AliyunServiceRoleForKMSKeyStore<br/>AliyunServiceRoleForKMSSecretsManagerForECS<br/>AliyunServiceRoleForKMSSecretsManagerForRDS                                                                                                                    |
| nas           | AliyunServiceRoleForNasLogDelivery                                                                                                                                                                                                                 |
| ots           | AliyunServiceRoleForOTSDataDelivery                                                                                                                                                                                                                |
| ocean_base    | AliyunServiceRoleForOceanBaseEncryption<br/>AliyunServiceRoleForOceanBaseSecurityGroup<br/>AliyunServiceRoleForOceanBaseTenantInstance<br/>AliyunServiceRoleForOceanbaseMigrationAssessment                                                        |
| rds           | AliyunServiceRoleForRds<br/>AliyunServiceRoleForRdsMyBaseProprietary                                                                                                                                                                               |
| sls           | AliyunServiceRoleForSLSAlert                                                                                                                                                                                                                       |
| open_search   | AliyunServiceRoleForSearchEngine                                                                                                                                                                                                                   |
| imp           | AliyunServiceRolePolicyForImp                                                                                                                                                                                                                      |


作者
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

许可
----
 MIT Licensed. See LICENSE for full details.

参考
---------
* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://help.aliyun.com/document_detail/2582365.html)
* [服务关联角色](https://www.alibabacloud.com/help/en/doc-detail/160674.html)