# terraform-alicloud-service-linked-role


English | [简体中文](https://github.com/terraform-alicloud-modules/terraform-alicloud-service-linked-role/blob/master/README-CN.md)

Terraform Module used to create several service linked roles and system defined service role automatically Alibaba Cloud.

These types of resources are supported:

* [alicloud_resource_manager_service_linked_role](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/resource_manager_service_linked_role)
* [alicloud_ram_role](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ram_role)
* [alicloud_ram_role_policy_attachment](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/ram_role_policy_attachment)

## Terraform versions

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.159.0 |

## Usage
### Service Linked Role
#### Creating service linked roles using service name
You can create several service linked roles by specifying product name, like ack_one, adb, alikafka, etc.
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
If you don't want to create all linked roles in some product name, you can set `exclude_service_linked_role_with_role_names` to ignore them.
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
#### Creating service linked roles using role name
You can create several service linked roles by specifying role name.
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
#### Creating service linked roles using service id
You can create several service linked roles by specifying service id, like "adcp.aliyuncs.com", "actiontrail.aliyuncs.com", etc.
```hcl
module "slr-with-service-ids" {
  source = "terraform-alicloud-modules/service-linked-role/alicloud"
  service_linked_role_with_service_ids = [
    "network-insights.ecs.aliyuncs.com",
    "workbench.ecs.aliyuncs.com"
  ]
}
```
### Service Role
#### Creating service roles using service name
You can create several service roles by specifying product name, like ack_one, adb, alikafka, etc.
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
If you don't want to create all roles in some product name, you can set `exclude_service_role_with_role_names` to ignore them.
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
#### Creating service roles using role name
You can create several service roles by specifying role name.
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
#### Creating service roles using self defined roles
You can create several service roles by specifying role name, document, description and policy name.
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

## Examples

* [Complete service linked role example](https://github.com/terraform-alicloud-modules/terraform-alicloud-service-linked-role/tree/master/examples/complete-slr)
* [Complete service role example](https://github.com/terraform-alicloud-modules/terraform-alicloud-service-linked-role/tree/master/examples/complete-sr)

## Notes

### Avoid Error EntityAlreadyExists.Role
If you have used module [terraform-alicloud-enable](https://registry.terraform.io/modules/terraform-alicloud-modules/enable/alicloud/latest) enabled the following services, 
it will create some service linked roles synchronously. 
When using this module, you should use the `exclude_service_role_with_role_names`
to skip them to avoid error `EntityAlreadyExists.Role`.

| enabled service                     | synchronously created slr       |
|-------------------------------------|---------------------------------|
| alicloud_cen_transit_router_service | AliyunServiceRoleForCEN         |
| alicloud_privatelink_service        | AliyunServiceRoleForPrivatelink |
| alicloud_log_service                | AliyunServiceRoleForSLSAudit    |

### Destroy Failure

Currently, deleting the following service linked role may get failure. 
Once happened, please open an issue or contract us.

| service name  | deleting failed slr                                                                                                                                                                                                                          |
|---------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| api_gateway   | AliyunServiceRoleForApiGateway<br/>AliyunServiceRoleForApiGatewayConnectUserVpc<br/>AliyunServiceRoleForApiGatewayIntegrateWithMicroservices<br/>AliyunServiceRoleForApiGatewayMonitoring<br/>AliyunServiceRoleForApigatewayPutEventsToEventBridge |
| bss_open_api  | AliyunServiceRoleForBssOpenApi                                                                                                                                                                                                               |
| cdn           | AliyunServiceRoleForCDNLogDelivery                                                                                                                                                                                                           |
| dcdn          | AliyunServiceRoleForDCDNLogDelivery                                                                                                                                                                                                          |
| ecs           | AliyunServiceRoleForECSArchiving                                                                                                                                                                                                             |
| ehpc          | AliyunServiceRoleForEHPCManagedNetwork                                                                                                                                                                                                       |
| eflo          | AliyunServiceRoleForEfloCnp<br/>AliyunServiceRoleForEfloVcc                                                                                                                                                                                       |
| elasticsearch | AliyunServiceRoleForElasticsearch                                                                                                                                                                                     |
| fc            | AliyunServiceRoleForFC                                                                                                                                                                                    |
| iot           | AliyunServiceRoleForIoTCloudSource                                                                                                                                                                                    |
| kms           | AliyunServiceRoleForKMSKeyStore<br/>AliyunServiceRoleForKMSSecretsManagerForECS<br/>AliyunServiceRoleForKMSSecretsManagerForRDS                                                                                                                                                                                       |
| nas           | AliyunServiceRoleForNasLogDelivery                                                                                                                                                                                    |
| ots           | AliyunServiceRoleForOTSDataDelivery                                                                                                                                                                                    |
| ocean_base    | AliyunServiceRoleForOceanBaseEncryption<br/>AliyunServiceRoleForOceanBaseSecurityGroup<br/>AliyunServiceRoleForOceanBaseTenantInstance<br/>AliyunServiceRoleForOceanbaseMigrationAssessment                                                                                                                                                                                  |
| rds           | AliyunServiceRoleForRds<br/>AliyunServiceRoleForRdsMyBaseProprietary                                                                                                                                                                                   |
| sls           | AliyunServiceRoleForSLSAlert                                                                                                                                                                                          |
| open_search   | AliyunServiceRoleForSearchEngine                                                                                                                                                                       |
| imp           | AliyunServiceRolePolicyForImp                                                                                                                                                                       |

Authors
-------
Created and maintained by Alibaba Cloud Terraform Team(terraform@alibabacloud.com)

License
----
 MIT Licensed. See LICENSE for full details.

Reference
---------
* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest)
* [Service-linked roles](https://www.alibabacloud.com/help/en/doc-detail/160674.html)