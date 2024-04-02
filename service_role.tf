locals {
  service_roles = {
    AliyunAdcpManagedMseRole = {
      description    = "adcp will use this role to access your resources in other services."
      description_cn = "adcp使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunAdcpManagedMseRolePolicy"
      document       = <<EOF
          {
            "Statement": [
              {
                "Action": "sts:AssumeRole",
                "Effect": "Allow",
                "Principal": {
                  "Service": [
                    "adcp.aliyuncs.com"
                  ]
                }
              }
            ],
            "Version": "1"
          }
      EOF
    }
    AliyunAdcpServerlessKubernetesRole = {
      description    = "adcp will use this role to access your resources in other services."
      description_cn = "adcp使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunAdcpServerlessKubernetesRolePolicy"
      document       = <<EOF
          {
            "Statement": [
              {
                "Action": "sts:AssumeRole",
                "Effect": "Allow",
                "Principal": {
                  "Service": [
                    "adcp.aliyuncs.com"
                  ]
                }
              }
            ],
            "Version": "1"
          }
      EOF
    }
    AliyunActionTrailDefaultRole = {
      description    = "Action Trail will use this role to access your resources in other services."
      description_cn = "ActionTrail默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunActionTrailRolePolicy"
      document       = <<EOF
          {
            "Statement": [
              {
                "Action": "sts:AssumeRole",
                "Effect": "Allow",
                "Principal": {
                  "Service": [
                    "actiontrail.aliyuncs.com"
                  ]
                }
              }
            ],
            "Version": "1"
          }
      EOF
    }
    AliyunKafkaDefaultRole = {
      description    = "Aliyun kafka will use this role to access your resources in other services."
      description_cn = "Kafka默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunKafkaRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "alikafka.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
    EOF
    }
    AliyunDNSDefaultRole = {
      description    = "DNS will use this role to access your resources in other services."
      description_cn = "云解析(DNS)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunDNSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "alidns.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunAnalyticDBAccessingOSSRole = {
      description    = "The Open Analytics will use this role to access OSS."
      description_cn = "AnalyticDB默认使用此角色来访问OSS"
      policy_name    = "AliyunAnalyticDBAccessingOSSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ads.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunAnalyticDBAccessingDTSRole = {
      description    = "The Open Analytics will use this role to access DTS."
      description_cn = "AnalyticDB默认使用此角色来访问DTS"
      policy_name    = "AliyunAnalyticDBAccessingDTSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ads.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunAnalyticDBAccessingLogRole = {
      description    = "The Open Analytics will use this role to access Log."
      description_cn = "AnalyticDB默认使用此角色来访问日志服务(Log)"
      policy_name    = "AliyunAnalyticDBAccessingLogRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ads.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunAntiDDoSProAccessingLogRole = {
      description    = "The Anti-DDoS Pro will use this role to access your resources in other services."
      description_cn = "云盾DDoS高防默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunAntiDDoSProAccessingLogRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ddospro.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunDDoSCOOLogArchiveRole = {
      description    = "New BGP Anti-DDoS Service PRO will use this role to access LOG."
      description_cn = "新BGP高防(DDoSCOO)默认使用此角色来访问日志服务(Log)"
      policy_name    = "AliyunDDoSCOOLogArchiveRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ddoscoo.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunDDoSCOODefaultRole = {
      description    = "New BGP Anti-DDoS Service PRO will use this role to access your resources in other services."
      description_cn = "新BGP高防(DDoSCOO)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunDDoSCOORolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ddoscoo.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunApiGatewayAccessingFCRole = {
      description    = "The ApiGateway service will use this role to access FC."
      description_cn = "API网关(ApiGateway)服务默认使用此角色来访问函数计算(FC)服务"
      policy_name    = "AliyunApiGatewayAccessingFCRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "apigateway.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunARMSAccessingECSRole = {
      description    = "The ARMS will use this role to access your resources in other services."
      description_cn = "业务实时监控服务(ARMS)默认使用此角色来访问您在云服务器(ECS)中的资源。"
      policy_name    = "AliyunARMSAccessingECSRolePolicy"
      document       = <<EOF
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
    AliyunARMSDefaultRole = {
      description    = "The ARMS will use this role to access your resources in other services."
      description_cn = "业务实时监控服务(ARMS)默认使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunARMSRolePolicy"
      document       = <<EOF
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
    AliyunARMSAccessingCSRole = {
      description    = "The ARMS will use this role to access your resources in other services."
      description_cn = "业务实时监控服务(ARMS)默认使用此角色来访问您在容器服务(CS)中的资源。"
      policy_name    = "AliyunARMSAccessingCSRolePolicy"
      document       = <<EOF
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
    AliyunRDCDevStudioRole = {
      description    = "RDC DevStudio will use this role to access your resources in other services."
      description_cn = "云效 DevStudio 使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunRDCDevStudioRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "rdc.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunRDCGitEncryptionRole = {
      description    = "RDC will use this role to access your resources in other services."
      description_cn = "云效使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunRDCGitEncryptionRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "rdc.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunDevOpsCollegeRole = {
      description    = "DevOps college will use this role to access your resources in other services."
      description_cn = "云效学院使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunDevOpsCollegeRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "rdc.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunRDCDefaultRole = {
      description    = "The RDC will use this role to access your resources in other services."
      description_cn = "云效(RDC)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunRDCRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "rdc.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunRDCCodeAuditRole = {
      description    = "RDC will use this role to access your resources in other services."
      description_cn = "云效代码审计使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunRDCCodeAuditRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "rdc.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunRDCCodeBackupRole = {
      description    = "RDC will use this role to access your resources in other services."
      description_cn = "RDC使用此角色来访问您的云产品存储资源，来帮助实现代码自动备份"
      policy_name    = "AliyunRDCCodeBackupRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "rdc.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunRDCRamAutoImportRole = {
      description    = "RDC will use this role to access your resources in other services."
      description_cn = "RDC使用此角色来访问您的RAM信息。"
      policy_name    = "AliyunRDCRamAutoImportRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "rdc.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunVODDefaultRole = {
      description    = "VOD will use this role to access your resources in other services."
      description_cn = "VOD默认使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunVODRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "vod.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunVODVideoLifecycleRole = {
      description    = "VOD will use this role to access your resources in other services."
      description_cn = "当您启用视频服务中的OSS文件生命周期管理功能时，视频服务将使用此角色来删除您OSS中的文件。"
      policy_name    = "AliyunVODVideoLifecycleRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "vod.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunBastionHostDefaultRole = {
      description    = "BastionHost will use this role to access your resources in other services."
      description_cn = "堡垒机(BastionHost)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunBastionHostRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "bastionhost.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCDNLoggingRole = {
      description    = "The CDN service will use this role to access OSS."
      description_cn = "CDN默认使用此角色来将日志转储至OSS中"
      policy_name    = "AliyunCDNLoggingRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cdn.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCDNAccessingPrivateOSSRole = {
      description    = "The CDN service will use this role to access OSS."
      description_cn = "CDN默认使用此角色来回源私有OSS Bucket"
      policy_name    = "AliyunCDNAccessingPrivateOSSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cdn.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCDNLogArchiveRole = {
      description    = "The CDN service will use this role to access LOG."
      description_cn = "CDN默认使用此角色来访问日志服务(Log)"
      policy_name    = "AliyunCDNLogArchiveRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cdn.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCDNEventNotificationRole = {
      description    = "The CDN service will use this role to send notification."
      description_cn = "CDN默认使用此角色来发送事件通知"
      policy_name    = "AliyunCDNEventNotificationRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cdn.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunSLBDefaultRole = {
      description    = "The SLB service will use this role to access OSS."
      description_cn = "SLB默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunSLBRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "slb.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunSLBLogArchiveRole = {
      description    = "The SLB service will use this role to access LOG."
      description_cn = "SLB默认使用此角色来访问日志服务(Log)"
      policy_name    = "AliyunSLBLogArchiveRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "slb.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunSLBHealthDiagnoseRole = {
      description    = "The SLB service will use this role to access ECS."
      description_cn = "SLB使用此角色来访问ECS"
      policy_name    = "AliyunSLBHealthDiagnoseRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "slb.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunClickhouseAccessingLogRole = {
      description    = "ClickHouse will use this role to access your resources in other services."
      description_cn = "ClickHouse使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunClickhouseAccessingLogRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "clickhouse.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunConfigDefaultRole = {
      description    = "The Config Service will use this role to access your resources in other services."
      description_cn = "配置管理(Config)在集群操作时默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunConfigRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "config.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunDbauditApsaraStackRole = {
      description    = "DbAudit will use this role to access your resources in other services."
      description_cn = "DbAudit使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunDbauditApsaraStackRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "dbaudit.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunDbAuditDefaultRole = {
      description    = "DbAudit will use this role to access your resources in other services."
      description_cn = "数据库审计(DbAudit)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunDbAuditRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "dbaudit.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCloudFirewallDefautlRole = {
      description    = "Cloud Firewall will use this role to access your resources in other services."
      description_cn = "Cloud Firewall默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunCloudFirewallRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cloudfw.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCloudFirewallAccessingECSRole = {
      description    = "The Cloud Firewall service will use this role to access ECS."
      description_cn = "云防火墙(CloudFirewall)服务使用此角色来访问ECS服务"
      policy_name    = "AliyunCloudFirewallAccessingECSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cloudfw.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCloudMonitorAccessingESSRole = {
      description    = "CloudMonitor will use this role to access your resources in other services."
      description_cn = "云监控(CloudMonitor)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunCloudMonitorAccessingESSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cloudmonitor.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCloudMonitorAccessingFCRole = {
      description    = "CloudMonitor will use this role to access your resources in other services."
      description_cn = "云监控(CloudMonitor)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunCloudMonitorAccessingFCRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cloudmonitor.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCloudMonitorDefaultRole = {
      description    = "CloudMonitor will use this role to access your resources in other services."
      description_cn = "云监控(CloudMonitor)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunCloudMonitorRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cloudmonitor.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCloudMonitorAccessingCDNRole = {
      description    = "CloudMonitor will use this role to access your resources in other services."
      description_cn = "云监控(CloudMonitor)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunCloudMonitorAccessingCDNRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cloudmonitor.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCloudMonitorAccessingLogRole = {
      description    = "CloudMonitor will use this role to access your resources in other services."
      description_cn = "云监控(CloudMonitor)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunCloudMonitorAccessingLogRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cloudmonitor.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCloudMonitorAccessingCloudAssistantRole = {
      description    = "CloudMonitor will use this role to access your resources in other services."
      description_cn = "云监控（CloudMonitor）默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunCloudMonitorAccessingCloudAssistantRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cloudmonitor.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCloudMonitorSendOperationMessageToComputeNestRole = {
      description    = "CloudMonitor will use this role to send alarm message to compute nest service."
      description_cn = "云监控使用此角色来给计算巢发送报警消息。"
      policy_name    = "AliyunCloudMonitorSendOperationMessageToComputeNestRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cloudmonitor.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCloudMonitorGenerateOpsItemForOpsCenterRole = {
      description    = "CloudMonitor will use this role to generate ops item for ops center."
      description_cn = "CloudMonitor使用此角色来生成运维中心的运维项。"
      policy_name    = "AliyunCloudMonitorGenerateOpsItemForOpsCenterRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cloudmonitor.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCloudauthAccessingMNSRole = {
      description    = "The Cloudauth will use this role to access MNS."
      description_cn = "实人认证服务(Cloudauth)默认使用此角色来访问MNS"
      policy_name    = "AliyunCloudauthAccessingMnsRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cloudauth.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCloudauthAccessingOSSRole = {
      description    = "The Cloudauth will use this role to access OSS."
      description_cn = "实人认证服务(Cloudauth)默认使用此角色来访问OSS"
      policy_name    = "AliyunCloudauthAccessingOSSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cloudauth.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSDefaultRole = {
      description    = "The Container Service will use this role to access your resources in other services."
      description_cn = "容器服务(CS)在集群操作时默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunCSDefaultRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCISDefaultRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "CS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCISDefaultRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSServerlessKubernetesRole = {
      description    = "The Container Service for Serverless Kubernetes will use this role to access your resources in other services."
      description_cn = "容器服务(CS) Serverless Kubernetes版 默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunCSServerlessKubernetesRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSKubernetesAuditRole = {
      description    = "The Container Service for Kubernetes will use this role to access your resources in other services."
      description_cn = "容器服务(CS) Kubernetes 审计功能使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunCSKubernetesAuditRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedAcrRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "CS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedAcrRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedWebhookInjectorRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "CS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedWebhookInjectorRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedAutoScalerRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "CS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedAutoScalerRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedNlcRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "CS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedNlcRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedVKRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "容器服务(CS) Serverless集群VK组件使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedVKRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedDefaultWorkerRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "容器服务(CS) Kubernetes 集群使用此角色作为Worker节点的默认ECS role。"
      policy_name    = "AliyunCSManagedDefaultWorkerRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedKubeAIRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "CS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedKubeAIRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedEdgeRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "CS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedEdgeRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedKubernetesRole = {
      description    = "The Container Service for Managed Kubernetes will use this role to access your resources in other services."
      description_cn = "容器服务(CS) Managed Kubernetes版 默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunCSManagedKubernetesRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedLogRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "容器服务(CS) Kubernetes 集群日志组件使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunCSManagedLogRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedCmsRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "容器服务(CS) 集群CMS组件使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedCmsRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedCsiRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "容器服务(CS) Kubernetes 集群存储插件使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunCSManagedCsiRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedLicenseRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "CS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedLicenseRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedSecurityRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "CS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedSecurityRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedNetworkRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "容器服务(CS) 集群网络组件使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedNetworkRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedArmsRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "容器服务(CS) Kubernetes 集群Arms插件使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedArmsRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedBackupRestoreRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "CS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedBackupRestoreRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedCostRole = {
      description    = "CS will use this role to access your billing data in user center for ACK cost analysis."
      description_cn = "CS使用此角色来访问您在用户中心的账单数据并进行ACK成本分析。"
      policy_name    = "AliyunCSManagedCostRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedNimitzRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "CS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedNimitzRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedMseRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "CS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedMseRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCSManagedTraceRole = {
      description    = "CS will use this role to access your resources in other services."
      description_cn = "CS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunCSManagedTraceRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunHDMDefaultRole = {
      description    = "Database Autonomy Service will use this role to access your resources in other services."
      description_cn = "数据库自治服务(DAS，前HDM)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunHDMRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "hdm.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunDMSDefaultRole = {
      description    = "Data Management Service(DMS) uses this role by default to access your resources in other cloud products."
      description_cn = "数据管理服务(DMS)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunDMSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "dms.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunDRDSDefaultRole = {
      description    = "DRDS will use this role to access your resources in other services."
      description_cn = "分布式关系型数据库(DRDS)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunDRDSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "drds.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunSDDPAccessingOSSRole = {
      description    = "The SDDP will use this role to access OSS."
      description_cn = "敏感数据保护(SDDP)默认使用此角色来访问OSS"
      policy_name    = "AliyunSDDPAccessingOSSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "sddp.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunSDDPDefaultRole = {
      description    = "SDDP will use this role to access your resources in other services."
      description_cn = "敏感数据保护(SDDP)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunSDDPRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "sddp.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunDTSDefaultRole = {
      description    = "DTS will use this role to access your resources in other services."
      description_cn = "DTS默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunDTSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "dts.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunDataWorksAccessingOSSRole = {
      description    = "The DataWorks service will use this role to access OSS."
      description_cn = "DataWorks默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunDataWorksAccessingOSSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "dataworks.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunDataWorksAccessingENIRole = {
      description    = "The DataWorks service will use this role to access ENI."
      description_cn = "DataWorks默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunDataWorksAccessingENIRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "dataworks.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunDBSDefaultRole = {
      description    = "DBS will use this role to access your resources in other services."
      description_cn = "DBS默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunDBSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "dbs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunDBFSAccessingECSRole = {
      description    = "DBFS will use this role to access your resources in other services."
      description_cn = "DBFS使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunDBFSAccessingECSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "dbfs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunDataHubDefaultRole = {
      description    = "DataHub will use this role to access your resources in other services."
      description_cn = "DataHub默认使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunDataHubRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "datahub.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunDirectMailAccessingDNSRole = {
      description    = "The DirectMail Plateform will use this role to access DNS."
      description_cn = "邮件推送(DirectMail)默认使用此角色来访问云解析(DNS)"
      policy_name    = "AliyunDirectMailAccessingDNSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "dm.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunEMROnACKDefaultRole = {
      description    = "E-MapReduce(on ACK) will use this role to access your resources in other services."
      description_cn = "E-MapReduce(on ACK) 使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunEMROnACKDefaultRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "emr.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunEMRECSDefaultRole = {
      description    = "The tasks of EMR service will use this role to access OSS resources."
      description_cn = "E-MapReduce中的作业默认使用此角色来访问您的云资源"
      policy_name    = "AliyunEMRECSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "emr.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunEMRDefaultRole = {
      description    = "The EMR service will use this role to access ECS resources."
      description_cn = "E-MapReduce默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunEMRRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "emr.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunEMRNotebookDefaultRole = {
      description    = "EMR Notebook will use this role to access your resources in other services."
      description_cn = "EMR Notebook使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunEMRNotebookDefaultRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "emr.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunEMRWorkflowDefaultRole = {
      description    = "EMR Workflow will use this role to access your resources in other services."
      description_cn = "EMR Workflow使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunEMRWorkflowDefaultRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "emr.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunEMRManagedCostRole = {
      description    = "EMR will use this role to access your billing data in the User Center and perform EMR cost analysis."
      description_cn = "EMR使用此角色来访问您在用户中心的账单数据并进行 EMR 成本分析。"
      policy_name    = "AliyunEMRManagedCostRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "emr.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunECSInstanceForYundunSysTrustRole = {
      description    = "ECS will use this role to access your resources SysTrust services."
      description_cn = "ECS使用此角色来访问SysTrust云产品中的资源。"
      policy_name    = "AliyunECSInstanceForYundunSysTrustRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunECSInstanceForCSManagedRole = {
      description    = "ECS will use this role to access your resources in other services."
      description_cn = "ECS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunECSInstanceForCSManagedRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunECSEncryptDefaultRole = {
      description    = "ECS will use this role to access your resources in other services."
      description_cn = "ECS默认使用此角色访问KMS"
      policy_name    = "AliyunECSEncryptDefaultRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunECSImageExportDefaultRole = {
      description    = "The ECS service will use this role to export image file."
      description_cn = "ECS默认使用此角色来导出镜像"
      policy_name    = "AliyunECSImageExportRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunECSImageImportDefaultRole = {
      description    = "The ECS service will use this role to import image file."
      description_cn = "ECS默认使用此角色来导入镜像"
      policy_name    = "AliyunECSImageImportRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunECSAccessingHBRRole = {
      description    = "HBR will use this role to access your resources in other services."
      description_cn = "ECS默认使用此角色访问混合云备份(HBR)服务"
      policy_name    = "AliyunECSAccessingHBRRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunECSAutoProvisioningGroupRole = {
      description    = "ECS will use this role to access your resources in other services."
      description_cn = "ECS AutoProvisioningGroup功能默认使用此角色"
      policy_name    = "AliyunECSAutoProvisioningGroupRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunECSDiskEncryptDefaultRole = {
      description    = "ECS will use this role to access your resources in other services."
      description_cn = "ECS默认使用此角色访问KMS"
      policy_name    = "AliyunECSDiskEncryptRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunECSInstanceForEMRRole = {
      description    = "Jobs running on E-MapReduce will use this role to access your resources in other services."
      description_cn = "E-MapReduce服务上运行的作业默认使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunECSInstanceForEMRRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunEcsLicenseManagerRole = {
      description    = "LicenseManager will use this role to access your resources in other services."
      description_cn = "许可证管理服务使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunEcsLicenseManagerRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunECSInstanceForWebPlusRole = {
      description    = "WebPlus app on ECS will use this role to access your resources in other services."
      description_cn = "ECS实例使用此角色访问您在其他云产品中的资源"
      policy_name    = "AliyunECSInstanceForWebPlusRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunECSInstanceForEMRStudioRole = {
      description    = "EMR Studio will use this role to access your resources in other services."
      description_cn = "EMR Studio 使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunECSInstanceForEMRStudioRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunMSEForECIRole = {
      description    = "ECI uses this role to access your resources in MSE."
      description_cn = "ECI使用此角色来访问您在MSE中的资源。"
      policy_name    = "AliyunMSEForECIRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunECSOxmDeployRole = {
      description    = "ECS will use this role to realize batch deployment of product."
      description_cn = "ECS使用此角色完成产品软件包批量部署。"
      policy_name    = "AliyunECSOxmDeployRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunECSInstanceForEHPCRole = {
      description    = "The E-HPC cluster manager nodes will use this role to access your resources in other services."
      description_cn = "E-HPC集群管理节点默认使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunECSInstanceForEHPCRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunECSCloudBoxImageImportDefaultRole = {
      description    = "ECS uses this role to import the local OSS image of the cloud box."
      description_cn = "ECS使用此角色来导入云盒本地OSS镜像。"
      policy_name    = "AliyunECSCloudBoxImageImportDefaultRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ecs.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunEDASDefaultRole = {
      description    = "EDAS will use this role to access your resources in other services."
      description_cn = "企业级分布式应用服务(EDAS)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunEDASRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "edas.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunECIContainerGroupRole = {
      description    = "ECI will use this role to access your resources in other services."
      description_cn = "弹性容器实例(ECI)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunECIContainerGroupRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "eci.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunEHPCDefaultRole = {
      description    = "The Elastic HPC service will use this role to run ECS instances."
      description_cn = "弹性高性能计算(EHPC)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunEHPCRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ehpc.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunElasticsearchAccessingRDSRole = {
      description    = "The Elasticsearch Plateform will use this role to access RDS."
      description_cn = "Elasticsearch默认使用此角色来访问RDS"
      policy_name    = "AliyunElasticsearchAccessingRDSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "elasticsearch.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunElasticsearchAccessingOOSRole = {
      description    = "The Elasticsearch Plateform will use this role to access OOS."
      description_cn = "Elasticsearch默认使用此角色来访问运维编排（OOS）"
      policy_name    = "AliyunElasticsearchAccessingOOSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "elasticsearch.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunElasticsearchAccessingLogRole = {
      description    = "The Elasticsearch Plateform will use this role to access Log."
      description_cn = "Elasticsearch默认使用此角色来访问日志服务(Log)"
      policy_name    = "AliyunElasticsearchAccessingLogRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "elasticsearch.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunElasticsearchAccessingOSSRole = {
      description    = "Alibaba Cloud Elasticsearch uses this role to access your resources in Object Storage (OSS)."
      description_cn = "阿里云Elasticsearch使用此角色来访问您在对象存储（OSS）中的资源。"
      policy_name    = "AliyunElasticsearchAccessingOSSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "elasticsearch.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunEventBridgeAccessingMNSRole = {
      description    = "Eventbridge will use this role to access your resources in other services."
      description_cn = "事件总线Eventbridge使用此角色来访问您在MNS产品中的资源。"
      policy_name    = "AliyunEventBridgeAccessingMNSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "eventbridge.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunEventBridgeAccessingFCRole = {
      description    = "Eventbridge will use this role to access your resources in FC services."
      description_cn = "事件总线Eventbridge使用此角色来访问您在FC产品中的资源。"
      policy_name    = "AliyunEventBridgeAccessingFCRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "eventbridge.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunFCForDevCloudRole = {
      description    = "FC will use this role to access your resources in other services."
      description_cn = "FC使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunFCForDevCloudRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "fc.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunFCAccessVPCAndLogDefaultRole = {
      description    = "FC will use this role to access your VPC and Logs."
      description_cn = "FC使用此角色来访问您的VPC和日志服务。"
      policy_name    = "AliyunFCAccessVPCAndLogDefaultRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "fc.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunFCDefaultRole = {
      description    = "FC uses this role to access your resources in other cloud products and use it as the execution role of the function."
      description_cn = "FC使用此角色来访问您在其他云产品中的资源并以此作为函数的执行角色。"
      policy_name    = "AliyunFCDefaultRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "fc.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunFCPutObjectRole = {
      description    = "The FC service will use this role to access OSS."
      description_cn = "函数计算服务(FC)默认使用此角色来访问OSS"
      policy_name    = "AliyunFCPutObjectRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "fc.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunFCLogExecutionRole = {
      description    = "The FC service will use this role to access LOG."
      description_cn = "函数计算服务(FC)默认使用此角色来访问LOG"
      policy_name    = "AliyunFCLogExecutionRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "fc.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunFCServerlessDevsRole = {
      description    = "FC will use this role to access your resources in other services."
      description_cn = "FC使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunFCServerlessDevsRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "fc.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunGDSAccessingOSSRole = {
      description    = "The GDS will use this role to access OSS."
      description_cn = "图数据库服务(GDS)默认使用此角色来访问OSS"
      policy_name    = "AliyunGDSAccessingOSSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "graphdb.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunHBaseDefaultRole = {
      description    = "HBase will use this role to access your resources in other services."
      description_cn = "HBase默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunHBaseRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "hbase.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunHBRDRRole = {
      description    = "The Hybrid Cloud Disaster Recovery Service uses this role to access your ECS / VPC and other resources to implement ECS disaster recovery on the cloud."
      description_cn = "混合云容灾服务使用此角色来访问您的ECS/VPC等资源，来实现云上ECS灾备。"
      policy_name    = "AliyunHBRDRRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "hbr.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunHBRDefaultRole = {
      description    = "HBR will use this role to access your resources in other services."
      description_cn = "混合云备份(HBR)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunHBRRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "hbr.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunHBRSyncVPCDeployRole = {
      description    = "HBR will use this role to access your resources in other services."
      description_cn = "混合云备份(HBR)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunHBRSyncVPCDeployRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "hbr.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIMMDefaultRole = {
      description    = "IMM will use this role to access your resources in other services."
      description_cn = "IMM默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunIMMRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "imm.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIMMBatchTriggerRole = {
      description    = "IMM will use this role to access your resources in other services in Batch/Trigger scenario."
      description_cn = "在触发器/批量处理(Trigger/Batch)场景中，IMM使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunIMMBatchTriggerRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "imm.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIOTAccessingLinkWANRole = {
      description    = "The IoT Plateform will use this role to access LinkWAN."
      description_cn = "IoT默认使用此角色来访问LinkWAN"
      policy_name    = "AliyunIOTAccessingLinkWANRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIOTFederatedLoginRole = {
      description    = "The IoT Plateform will use this role to access your resources in other services."
      description_cn = "IoT Plateform默认使用此角色来访问您的云资源"
      policy_name    = "AliyunIOTFederatedLoginRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIOTAccessingHiTSDBRole = {
      description    = "The IoT Plateform will use this role to access HiTSDB."
      description_cn = "IOT默认使用此角色来访问HiTSDB"
      policy_name    = "AliyunIOTAccessingHiTSDBRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIOTAccessingECSENIRole = {
      description    = "The IoT Plateform will use this role to access your resources in other services."
      description_cn = "IoT Plateform默认使用此角色来访问您的云资源"
      policy_name    = "AliyunIOTAccessingECSENIRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIoTIndustryPlatformRole = {
      description    = "IOT will use this role to access your resources in other services."
      description_cn = "IOT使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunIoTIndustryPlatformRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIoTAppHostingRole = {
      description    = "The IoT Plateform will use this role to access your resources in other services."
      description_cn = "IoT AppHosting默认使用此角色来访问您的云资源"
      policy_name    = "AliyunIoTAppHostingRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIOTAccessingLogRole = {
      description    = "The IoT Plateform will use this role to access Log."
      description_cn = "IOT默认使用此角色来访问Log"
      policy_name    = "AliyunIOTAccessingLogRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIOTAccessingFssRole = {
      description    = "The IoT Plateform will use this role to access Fss."
      description_cn = "IoT默认使用此角色来访问固件安全检测服务Fss"
      policy_name    = "AliyunIOTAccessingFssRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIOTAccessingKafkaRole = {
      description    = "The IoT Plateform will use this role to access Kafka."
      description_cn = "IoT默认使用此角色来访问消息队列Kafka"
      policy_name    = "AliyunIOTAccessingKafkaRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIOTAccessingRDSRole = {
      description    = "The IoT Plateform will use this role to access RDS."
      description_cn = "IOT默认使用此角色来访问RDS"
      policy_name    = "AliyunIOTAccessingRDSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIOTAccessingFCRole = {
      description    = "The IoT Plateform will use this role to access Function Compute."
      description_cn = "IOT默认使用此角色来访问FC"
      policy_name    = "AliyunIOTAccessingFCRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIOTAccessingMNSRole = {
      description    = "The IoT Plateform will use this role to access MNS."
      description_cn = "IOT默认使用此角色来访问MNS"
      policy_name    = "AliyunIOTAccessingMNSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIOTAccessingDataHubRole = {
      description    = "The IoT Plateform will use this role to access DataHub."
      description_cn = "IOT默认使用此角色来访问DataHub"
      policy_name    = "AliyunIOTAccessingDataHubRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIOTAccessingMQRole = {
      description    = "The IoT Plateform will use this role to access MetaQ."
      description_cn = "IOT默认使用此角色来访问MQ"
      policy_name    = "AliyunIOTAccessingMQRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIOTAccessingDysmsRole = {
      description    = "The IoT Plateform will use this role to access Dysms."
      description_cn = "IoT默认使用此角色来访问短信服务(Dysms)"
      policy_name    = "AliyunIOTAccessingDysmsRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunIOTAccessingOTSRole = {
      description    = "The IoT Plateform will use this role to access OTS."
      description_cn = "IOT默认使用此角色来访问OTS"
      policy_name    = "AliyunIOTAccessingOTSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "iot.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunSLSAlertMonitorRole = {
      description    = "SLS will use this role to access your resources in other services."
      description_cn = "SLS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunSLSAlertMonitorRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "log.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunMarketAccessingApiGatewayRole = {
      description    = "Cloud Market will use this role to access your resources in other services."
      description_cn = "云市场使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunMarketAccessingApiGatewayRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "market.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunMaxComputeEncryptionDefaultRole = {
      description    = "MaxCompute(ODPS) will use this role to access your resources in KMS service."
      description_cn = "MaxCompute(ODPS)使用此角色来访问您在KMS产品中的资源。"
      policy_name    = "AliyunMaxComputeEncryptionDefaultRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "odps.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunNATAccessingNetworkInterfaceRole = {
      description    = "The NAT service will use this role to access ENI."
      description_cn = "NAT网关(NAT)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunNATAccessingNetworkInterfaceRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "nat.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunNASTieringRole = {
      description    = "NAS will use this role to access your resources in other services."
      description_cn = "文件存储服务默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunNASTieringRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "nas.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunNasEncryptDefaultRole = {
      description    = "NAS will use this role to access your KMS"
      description_cn = "NAS使用此角色来访问您的KMS"
      policy_name    = "AliyunNasEncryptDefaultRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "nas.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunNASDefaultRole = {
      description    = "NAS will use this role to access your resources in other services."
      description_cn = "文件存储服务默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunNASRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "nas.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunNASLogArchiveRole = {
      description    = "The NAS service will use this role to access LOG."
      description_cn = "NAS默认使用此角色来访问日志服务(Log)"
      policy_name    = "AliyunNASLogArchiveRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "nas.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunNASManageENIRole = {
      description    = "NAS will use this role to access your resources in other services."
      description_cn = "文件存储服务默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunNASManageENIRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "nas.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunMTSForOSSDefaultRole = {
      description    = "OSS will use this role to access MTS service."
      description_cn = "OSS默认使用此角色来访问MTS(媒体转码)服务"
      policy_name    = "AliyunMTSFullAccess"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "oss.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunOSSEventNotificationRole = {
      description    = "OSS will use this role to send event notifications"
      description_cn = "OSS默认使用此角色来发送事件通知"
      policy_name    = "AliyunOSSEventNotificationRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "oss.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunOSSDlsDefaultRole = {
      description    = "OSS will use this role to access your resources in other services."
      description_cn = "OSS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunOSSDlsRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "oss.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunOSSDLSTransferRole = {
      description    = "OSS will use this role to access your resources in other services."
      description_cn = "OSS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunOSSDLSTransferRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "oss.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunOSSImportSlsAuditRole = {
      description    = "OSS will use this role to access your resources in other services."
      description_cn = "OSS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunOSSImportSlsAuditRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "oss.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunOSSMirrorDefaultRole = {
      description    = "OSS will use this role to access your resources in other services."
      description_cn = "OSS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunOSSMirrorDefaultRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "oss.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunOSSObjectFcForOSSDefaultRole = {
      description    = "OSS will use this role to access your resources in other services."
      description_cn = "OSS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunOSSObjectFcForOSSDefaultRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "oss.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunOceanbaseMigrationServiceRole = {
      description    = "Oceanbase will use this role to access your resources in other services."
      description_cn = "Oceanbase使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunOceanbaseMigrationServiceRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "oceanbase.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunOpenSearchOsepRole = {
      description    = "Alibaba Cloud Open Search Ecological Platform uses this role to access the API of your Open Search LLM Intelligent Question and Answer Edition instance to achieve docking with platforms such as DingTalk, Feishu, and Enterprise WeChat."
      description_cn = "阿里云开放搜索生态平台使用此角色来访问您的开放搜索LLM智能问答版实例的API，实现钉钉、飞书、企业微信等平台对接。"
      policy_name    = "AliyunOpenSearchOsepRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "osep.opensearch.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunOpenSearchDefaultRole = {
      description    = "OpenSearch will use this role to access your resources in other services."
      description_cn = "开放搜索服务(OpenSearch)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunOpenSearchRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "opensearch.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunOOSAccessingECS4ESRole = {
      description    = "The OOS will use this role to access ECS."
      description_cn = "OOS默认使用此角色来访问ECS"
      policy_name    = "AliyunOOSAccessingECS4ESRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "oos.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunOOSLifecycleHook4CSRole = {
      description    = "OOS will use this role to access your resources in other services."
      description_cn = "OOS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunOOSLifecycleHook4CSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "oos.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunPrivateLinkAccessingENIRole = {
      description    = "The Private Link service will use this role to access ENI."
      description_cn = "私网连接(PrivateLink)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunPrivateLinkAccessingENIRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "privatelink.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunPVTZDefaultRole = {
      description    = "The PrivateZone service will use this role to access ENI."
      description_cn = "云解析 PrivateZone 默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunPVTZRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "pvtz.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunRDSNotificationRole = {
      description    = "RDS will use this role to access your resources in other services."
      description_cn = "RDS默认使用此角色来发送事件通知"
      policy_name    = "AliyunRDSNotificationRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "rds.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunRDSDedicatedHostGroupRole = {
      description    = "RDS will use this role to access your resources in other services."
      description_cn = "RDS使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunRDSDedicatedHostGroupRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "rds.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunRDSInstanceEncryptionDefaultRole = {
      description    = "RDS will use this role to access your resources in other services."
      description_cn = "RDS使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunRDSInstanceEncryptionRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "rds.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunRDSImportRole = {
      description    = "RDS will use this role to access your resources in other services."
      description_cn = "RDS使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunRDSImportRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "rds.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunRDSSqlExplorerRole = {
      description    = "RDS will use this role to access your resources in other services."
      description_cn = "RDS使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunRDSSqlExplorerRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "rds.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunAMQPAccessingCloudMonitorRole = {
      description    = "The AMQP Plateform will use this role to access CloudMonitor."
      description_cn = "AMQP默认使用此角色来访问CloudMonitor"
      policy_name    = "AliyunAMQPAccessingCloudMonitorRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "amqp.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunAMQPAccessingLogRole = {
      description    = "The AMQP will use this role to access Log."
      description_cn = "AMQP默认使用此角色来访问Log"
      policy_name    = "AliyunAMQPAccessingLogRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "amqp.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunMQAccessingCloudMonitorRole = {
      description    = "The MQ will use this role to access CloudMonitor."
      description_cn = "消息队列(MQ)默认使用此角色来访问云监控(CloudMonitor)"
      policy_name    = "AliyunMQAccessingCloudMonitorRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ons.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunSCDNAccessingECSRole = {
      description    = "The SCDN will use this role to access ECS."
      description_cn = "SCDN默认使用此角色来访问ECS"
      policy_name    = "AliyunSCDNAccessingECSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "scdn.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunSCDNAccessingSLBRole = {
      description    = "The SCDN will use this role to access SLB."
      description_cn = "SCDN默认使用此角色来访问SLB"
      policy_name    = "AliyunSCDNAccessingSLBRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "scdn.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunCASDefaultRole = {
      description    = "CAS will use this role to access your resources in other services."
      description_cn = "云盾证书服务(CAS)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunCASRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cas.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunPCADefaultRole = {
      description    = "CAS PCA will use this role to access your resources in other services."
      description_cn = "CAS PCA使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunPCARolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "cas.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunSchedulerxAccessingECIRole = {
      description    = "Schedulerx will use this role to access your resources in ECI services."
      description_cn = "Schedulerx使用此角色来访问您在ECI云产品中的资源。"
      policy_name    = "AliyunSchedulerxAccessingECIRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "schedulerx.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunSAEDefaultRole = {
      description    = "Serverless App Engine will use this role to access your resources in other services."
      description_cn = "轻量级分布式应用服务(SAE)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunSAERolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "sae.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunServiceMeshDefaultRole = {
      description    = "ServiceMesh will use this role to access your resources in other services."
      description_cn = "阿里云服务网格默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunServiceMeshRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "servicemesh.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunSmartAGAccessingPVTZRole = {
      description    = "The Smart Access Gateway will use this role to access your resources in other services."
      description_cn = "智能接入网关(SmartAG)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunSmartAGAccessingPVTZRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "smartag.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunTAGDefaultRole = {
      description    = "Tag will use this role to access your resources in other services."
      description_cn = "Tag使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunTAGDefaultRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "tag.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunOTSLogArchiveRole = {
      description    = "The OTS service will use this role to access LOG."
      description_cn = "OTS默认使用此角色来访问日志服务(Log)"
      policy_name    = "AliyunOTSLogArchiveRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "ots.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunTSDBAccessingENIRole = {
      description    = "The TSDB service will use this role to access ENI."
      description_cn = "时序时空数据库(TSDB)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunTSDBAccessingENIRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "hitsdb.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunVPCLogArchiveRole = {
      description    = "The VPC service will use this role to access LOG."
      description_cn = "VPC默认使用此角色来访问日志服务(Log)"
      policy_name    = "AliyunVPCLogArchiveRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "vpc.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunVpnAccessingIdaasRole = {
      description    = "The VPN service will use this role to access IDaaS."
      description_cn = "VPN默认使用此角色来访问应用身份服务（IDaaS）"
      policy_name    = "AliyunVpnAccessingIdaasRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "vpn.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunWAFAccessingECSRole = {
      description    = "The Web Application Firewall will use this role to access your resources in other services."
      description_cn = "云盾应用防火墙(WAF)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunWAFAccessingECSRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "waf.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunWAFConfigENIRole = {
      description    = "The Web Application Firewall will use this role to access your resources in other services."
      description_cn = "云盾应用防火墙(WAF)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunWAFConfigENIRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "waf.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunWAFAccessingSLBRole = {
      description    = "WAF will use this role to access your resources in other services."
      description_cn = "WAF使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunWAFAccessingSLBRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "waf.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunWAFAssetsManageRole = {
      description    = "The Web Application Firewall will use this role to access your resources in other services."
      description_cn = "云盾应用防火墙(WAF)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunWAFAssetsManageRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "waf.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
    AliyunWAFAccessingLogRole = {
      description    = "The Web Application Firewall will use this role to access your resources in other services."
      description_cn = "云盾应用防火墙(WAF)默认使用此角色来访问您在其他云产品中的资源"
      policy_name    = "AliyunWAFAccessingLogRolePolicy"
      document       = <<EOF
        {
          "Statement": [
            {
              "Action": "sts:AssumeRole",
              "Effect": "Allow",
              "Principal": {
                "Service": [
                  "waf.aliyuncs.com"
                ]
              }
            }
          ],
          "Version": "1"
        }
      EOF
    }
  }
}