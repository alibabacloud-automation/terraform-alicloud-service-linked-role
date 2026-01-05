locals {
  service_linked_roles = {
    AliyunServiceRoleForAdcp = {
      id             = "adcp.aliyuncs.com"
      description    = "Service Linked Role for adcp. adcp will use this role to access your resources in other services."
      description_cn = "用于分布式云容器平台（adcp）的服务关联角色，adcp使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForAdcp"
    }
    AliyunServiceRoleForActionTrail = {
      id             = "actiontrail.aliyuncs.com"
      description    = "Service Linked Role for ActionTrail. ActionTrail will use this role to access your resources in other services."
      description_cn = "用于操作审计（ActionTrail）的服务关联角色，ActionTrail使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForActionTrail"
    }
    AliyunServiceRoleForAlikafkaConnector = {
      id             = "connector.alikafka.aliyuncs.com"
      description    = "Service Linked Role for AlibabaMQ for Apache Kafka - connector. AlibabaMQ for Apache Kafka - connector will use this role to access your resources in other services."
      description_cn = "用于消息队列Kafka - connector（AlibabaMQ for Apache Kafka - connector）的服务关联角色，AlibabaMQ for Apache Kafka - connector使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForAlikafkaConnector"
    }
    AliyunServiceRoleForAlikafkaInstanceEncryption = {
      id             = "instanceencryption.alikafka.aliyuncs.com"
      description    = "Service Linked Role for AlibabaMQ for Apache Kafka - InstanceEncryption. AlibabaMQ for Apache Kafka - InstanceEncryption will use this role to access your resources in other services."
      description_cn = "用于消息队列Kafka - 实例加密（AlibabaMQ for Apache Kafka - InstanceEncryption）的服务关联角色，AlibabaMQ for Apache Kafka - InstanceEncryption使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForAlikafkaInstanceEncryption"
    }
    AliyunServiceRoleForAlikafka = {
      id             = "alikafka.aliyuncs.com"
      description    = "Service Linked Role for Message Queue for Apache Kafka. Message Queue for Apache Kafka will use this role to access your resources in other services."
      description_cn = "用于消息队列 Kafka(alikafka)（Message Queue for Apache Kafka）的服务关联角色，Message Queue for Apache Kafka使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForAlikafka"
    }
    AliyunServiceRoleForAlikafkaETL = {
      id             = "etl.alikafka.aliyuncs.com"
      description    = "Service Linked Role for AlibabaMQ for Apache Kafka - ETL. AlibabaMQ for Apache Kafka - ETL will use this role to access your resources in other services."
      description_cn = "用于消息队列Kafka - ETL（AlibabaMQ for Apache Kafka - ETL）的服务关联角色，AlibabaMQ for Apache Kafka - ETL使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForAlikafkaETL"
    }
    AliyunServiceRoleForDNS = {
      id             = "alidns.aliyuncs.com"
      description    = "Service Linked Role for Alibaba Cloud DNS. Alibaba Cloud DNS will use this role to access your resources in other services."
      description_cn = "用于云解析DNS（Alibaba Cloud DNS）的服务关联角色，Alibaba Cloud DNS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDNS"
    }
    AliyunServiceRoleForAnalyticDBForMySQL = {
      id             = "ads.aliyuncs.com"
      description    = "Service Linked Role for AnalyticDB for MySQL. AnalyticDB for MySQL will use this role to access your resources in log service."
      description_cn = "用于AnalyticDB for MySQL（AnalyticDB for MySQL）的服务关联角色，AnalyticDB for MySQL使用此角色来访问您在日志服务中的资源。"
      policy_name    = "AliyunServiceRolePolicyForAnalyticDBForMySQL"
    }
    AliyunServiceRoleForADBPG = {
      id             = "adbpg.aliyuncs.com"
      description    = "Service Linked Role for AnalyticDB PostgreSQL. AnalyticDB PostgreSQL will use this role to access your resources in other services."
      description_cn = "用于云原生数据仓库 AnalyticDB PostgreSQL版（AnalyticDB PostgreSQL）的服务关联角色，AnalyticDB PostgreSQL使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForADBPG"
    }
    AliyunServiceRoleForDDoSBgp = {
      id             = "ddosbgp.aliyuncs.com"
      description    = "Service Linked Role for Anti-DDoS Origin. Anti-DDoS Origin will use this role to access your resources in other services."
      description_cn = "用于DDoS原生防护（Anti-DDoS Origin）的服务关联角色，Anti-DDoS Origin使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDDoSBgp"
    }
    AliyunServiceRoleForApiGateway = {
      id             = "apigateway.aliyuncs.com"
      description    = "Service Linked Role for APIGateway. APIGateway will use this role to access your resources in other services."
      description_cn = "用于API网关（API网关）的服务关联角色，API网关使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForApiGateway"
    }
    AliyunServiceRoleForApiGatewayMonitoring = {
      id             = "monitor.apigateway.aliyuncs.com"
      description    = "Service Linked Role for API Gateway - Monitoring. API Gateway - Monitoring will use this role to access your resources in other services."
      description_cn = "用于API网关 - 监控（API Gateway - Monitoring）的服务关联角色，API Gateway - Monitoring使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForApiGatewayMonitoring"
    }
    AliyunServiceRoleForApiGatewayConnectUserVpc = {
      id             = "connectuservpc.apigateway.aliyuncs.com"
      description    = "Service Linked Role for ApiGateway-ConnectUserVpc. ApiGateway-ConnectUserVpc will use this role to access your resources in other services."
      description_cn = "用于API网关-连接用户VPC（ApiGateway-ConnectUserVpc）的服务关联角色，ApiGateway-ConnectUserVpc使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForApiGatewayConnectUserVpc"
    }
    AliyunServiceRoleForApigatewayPutEventsToEventBridge = {
      id             = "eb-putevents.apigateway.aliyuncs.com"
      description    = "Service Linked Role for API Gateway. API Gateway will use this role to access your resources in other services."
      description_cn = "用于API 网关（API Gateway）的服务关联角色，API Gateway使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForApigatewayPutEventsToEventBridge"
    }
    AliyunServiceRoleForApiGatewayIntegrateWithMicroservices = {
      id             = "microservice-integration.apigateway.aliyuncs.com"
      description    = "Service Linked Role for ApiGateway - IntegrateWithMicroservices. ApiGateway - IntegrateWithMicroservices will use this role to access your resources in other services."
      description_cn = "用于API网关 - 集成微服务（ApiGateway - IntegrateWithMicroservices）的服务关联角色，ApiGateway - IntegrateWithMicroservices使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForApiGatewayIntegrateWithMicroservices"
    }
    AliyunServiceRoleForAlb = {
      id             = "alb.aliyuncs.com"
      description    = "Service Linked Role for Alb. Alb will use this role to access your resources in other services."
      description_cn = "用于应用型负载均衡（Alb）的服务关联角色，Alb使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForAlb"
    }
    AliyunServiceRoleForAlbLogDelivery = {
      id             = "logdelivery.alb.aliyuncs.com"
      description    = "Service Linked Role for Alb-LogDelivery will use this role to access your resources in other services."
      description_cn = "用于Alb-LogDelivery（应用型负载均衡-日志投递）的服务关联角色，应用型负载均衡-日志投递使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForAlbLogDelivery"
    }
    AliyunServiceRoleForALbClone = {
      id             = "clone.alb.aliyuncs.com"
      description    = "Service Linked Role for ALB-CloneCLB. ALB-CloneCLB will use this role to access your resources in other services."
      description_cn = "用于应用型负载均衡-复制传统型负载均衡（ALB-CloneCLB）的服务关联角色，ALB-CloneCLB使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForALbClone"
    }
    AliyunServiceRoleForAlbGa = {
      id             = "ga.alb.aliyuncs.com"
      description    = "Service Linked Role for Application Load Balancer - Open Global Accelerator. Application Load Balancer - Open Global Accelerator will use this role to access your resources in other services."
      description_cn = "用于应用型负载均衡-开启全球加速（Application Load Balancer - Open Global Accelerator）的服务关联角色，Application Load Balancer - Open Global Accelerator使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForAlbGa"
    }
    AliyunServiceRoleForARMS = {
      id             = "arms.aliyuncs.com"
      description    = "Service Linked Role for ARMS. ARMS will use this role to access your resources in other services."
      description_cn = "用于应用实时监控服务(ARMS)的服务关联角色，应用实时监控服务(ARMS)使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForARMS"
    }
    AliyunServiceRoleForARMSSecurity = {
      id             = "security.arms.aliyuncs.com"
      description    = "Service Linked Role for ARMS - Security. ARMS - Security will use this role to access your resources in other services."
      description_cn = "用于应用实时监控服务 - 应用安全（ARMS - Security）的服务关联角色，ARMS - Security使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForARMSSecurity"
    }
    AliyunServiceRolePolicyForImp = {
      id             = "imp.aliyuncs.com"
      description    = "Service Linked Role for Interactive Media Processing. Interactive Media Processing will use this role to access your resources in other services."
      description_cn = "用于互动直播（Interactive Media Processing）的服务关联角色，Interactive Media Processing使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForImp"
    }
    AliyunServiceRoleForAutoScaling = {
      id             = "ess.aliyuncs.com"
      description    = "Service Linked Role for AutoScaling. AutoScaling will use this role to access your resources in other services."
      description_cn = "用于AutoScaling的服务关联角色，弹性伸缩使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForAutoScaling"
    }
    AliyunServiceRoleForBastionhost = {
      id             = "bastionhost.aliyuncs.com"
      description    = "Service Linked Role for Bastionhost. Bastionhost will use this role to access your resources in other services."
      description_cn = "用于堡垒机（Bastionhost）的服务关联角色，Bastionhost使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForBastionhost"
    }
    AliyunServiceRoleForBssOpenApi = {
      id             = "bssopenapi.aliyuncs.com"
      description    = "Service Linked Role for Consume. Consume will use this role to access your resources in other services."
      description_cn = "用于费用中心（Consume）的服务关联角色，Consume使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForBssOpenApi"
    }
    AliyunServiceRoleForCDNAccessingDDoS = {
      id             = "cdn-ddos.cdn.aliyuncs.com"
      description    = "Service Linked Role for CDN Accessing DDoS. CDN will use this role to access your resources in other services."
      description_cn = "用于CDN访问DDoS的服务关联角色，CDN使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForCDNAccessingDDoS"
    }
    AliyunServiceRoleForCDNAccessingWAF = {
      id             = "cdn-waf.cdn.aliyuncs.com"
      description    = "Service Linked Role for Content Delivery Network, CDN will use this role to access your resources in WAF services."
      description_cn = "用于内容分发网络（Content Delivery Network, CDN）的服务关联角色，CDN使用此角色来访问您在WAF产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForCDNAccessingWAF"
    }
    AliyunServiceRoleForCDNLogDelivery = {
      id             = "logdelivery.cdn.aliyuncs.com"
      description    = "Service Linked Role for CDN-LogDelivery. CDN-LogDelivery will use this role to access your resources in other services."
      description_cn = "用于CDN-日志交付（CDN-LogDelivery）的服务关联角色，CDN-LogDelivery使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForCDNLogDelivery"
    }
    AliyunServiceRoleForBeeBotResourcePacket = {
      id             = "resourcepacket.chatbot.aliyuncs.com"
      description    = "Service Linked Role for BeeBot. BeeBot will use this role to access your resources in other services."
      description_cn = "用于云小蜜（BeeBot）的服务关联角色，BeeBot使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForBeeBotResourcePacket"
    }
    AliyunServiceRoleForBeeBotSMS = {
      id             = "sms.chatbot.aliyuncs.com"
      description    = "Service Linked Role for BeeBot-SMS. BeeBot-SMS will use this role to access your resources in other services."
      description_cn = "用于智能对话机器人-短信服务（BeeBot-SMS）的服务关联角色，BeeBot-SMS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForBeeBotSMS"
    }
    AliyunServiceRoleForSlbLogDelivery = {
      id             = "logdelivery.slb.aliyuncs.com"
      description    = "Service Linked Role for SLB-LogDelivery. SLB-LogDelivery will use this role to access your resources in other services."
      description_cn = "用于负载均衡-日志投递（SLB-LogDelivery）的服务关联角色，SLB-LogDelivery使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForSlbLogDelivery"
    }
    AliyunServiceRoleForSlbEipAccess = {
      id             = "eipaccess.slb.aliyuncs.com"
      description    = "Service Linked Role for SLB-EipAccess. SLB-EipAccess will use this role to access your resources in other services."
      description_cn = "用于负载均衡-公网地址（SLB-EipAccess）的服务关联角色，SLB-EipAccess使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForSlbEipAccess"
    }
    AliyunServiceRoleForClickHouse = {
      id             = "clickhouse.aliyuncs.com"
      description    = "Service Linked Role for ClickHouse. ClickHouse will use this role to access your resources in other services."
      description_cn = "用于ClickHouse（ClickHouse）的服务关联角色，ClickHouse使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForClickHouse"
    }
    AliyunServiceRoleForConfig = {
      id             = "config.aliyuncs.com"
      description    = "Service role of Config"
      description_cn = "Config的服务角色"
      policy_name    = "AliyunServiceRolePolicyForConfig"
    }
    AliyunServiceRoleForConfigRemediation = {
      id             = "remediation.config.aliyuncs.com"
      description    = "Service Linked Role for Config Remediation. Config Remediation will use this role to access your resources in other services."
      description_cn = "用于配置审计资源修正（Config Remediation）的服务关联角色，Config Remediation使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForConfigRemediation"
    }
    AliyunServiceRoleForDbaudit = {
      id             = "dbaudit.aliyuncs.com"
      description    = "Service Linked Role for Dbaudit. Dbaudit will use this role to access your resources in other services."
      description_cn = "用于数据库审计（Dbaudit）的服务关联角色，Dbaudit使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDbaudit"
    }
    AliyunServiceRoleForDbauditAssertManager = {
      id             = "assertmanager.dbaudit.aliyuncs.com"
      description    = "Service Linked Role for Dbaudit. Dbaudit will use this role to access your resources in other services."
      description_cn = "用于数据库审计（Dbaudit）的服务关联角色，Dbaudit使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDbauditAssertManager"
    }
    AliyunServiceRoleForCEN = {
      id             = "cen.aliyuncs.com"
      description    = "Service Linked Role for Cloud Enterprise Network. Cloud Enterprise Network will use this role to access your resources in other services."
      description_cn = "用于云企业网（Cloud Enterprise Network）的服务关联角色，Cloud Enterprise Network使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForCEN"
    }
    AliyunServiceRoleForCloudMonitor = {
      id             = "cloudmonitor.aliyuncs.com"
      description    = "Service Linked Role for CloudMonitor. CloudMonitor will use this role to access your resources in other services."
      description_cn = "用于云监控的服务关联角色，CloudMonitor使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "cloudmonitor.aliyuncs.com"
    }
    AliyunServiceRoleForCloudSSO = {
      id             = "cloudsso.aliyuncs.com"
      description    = "Service Linked Role for CloudSSO. CloudSSO will use this role to access your resources in other services."
      description_cn = "用于云SSO（CloudSSO）的服务关联角色，CloudSSO使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForCloudSSO"
    }
    AliyunServiceRoleForComputeNestSupplier = {
      id             = "supplier.computenest.aliyuncs.com"
      description    = "Service Linked Role for Compute Nest Supplier. Compute Nest Supplier will use this role to access your resources in other services."
      description_cn = "用于计算巢商家侧（Compute Nest Supplier）的服务关联角色，Compute Nest Supplier使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForComputeNestSupplier"
    }
    AliyunServiceRoleForComputeNestUser = {
      id             = "user.computenest.aliyuncs.com"
      description    = "Service Linked Role for Compute Nest User. Compute Nest User will use this role to access your resources in other services."
      description_cn = "用于计算巢用户侧（Compute Nest User）的服务关联角色，Compute Nest User使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForComputeNestUser"
    }
    AliyunServiceRoleForComputeNestDingTalk = {
      id             = "dingtalk.computenest.aliyuncs.com"
      description    = "Service Linked Role for The policy for AliyunServiceRoleForComputeNestDingTalk. The policy for AliyunServiceRoleForComputeNestDingTalk will use this role to access your resources in other services."
      description_cn = "用于⽤于 AliyunServiceRoleForComputeNestDingTalk 的授权策略（The policy for AliyunServiceRoleForComputeNestDingTalk）的服务关联角色，The policy for AliyunServiceRoleForComputeNestDingTalk使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForComputeNestDingTalk"
    }
    AliyunServiceRoleForContainerRegistryConnectCustomerVPC = {
      id             = "connect-customer-vpc.cr.aliyuncs.com"
      description    = "Service Linked Role for ContainerRegistry - ConnectCustomerVPC. ContainerRegistry - ConnectCustomerVPC will use this role to access your resources in other services."
      description_cn = "用于阿里云容器镜像服务 - 访问用户内网（ContainerRegistry - ConnectCustomerVPC）的服务关联角色，ContainerRegistry - ConnectCustomerVPC使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForContainerRegistryConnectCustomerVPC"
    }
    AliyunServiceRoleForContainerRegistryAccessCustomerPrivateZone = {
      id             = "access-customer-privatezone.cr.aliyuncs.com"
      description    = "Service Linked Role for ContainerRegistry - AccessCustomerPrivateZone. ContainerRegistry - AccessCustomerPrivateZone will use this role to access your resources in other services."
      description_cn = "用于阿里云容器镜像服务 - 访问用户PrivateZone（ContainerRegistry - AccessCustomerPrivateZone）的服务关联角色，ContainerRegistry - AccessCustomerPrivateZone使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForContainerRegistryAccessCustomerPrivate"
    }
    AliyunServiceRoleForContainerRegistryAccessCS = {
      id             = "access-cs.cr.aliyuncs.com"
      description    = "Service Linked Role for ContainerRegistry - AccessCS. ContainerRegistry - AccessCS will use this role to access your resources in other services."
      description_cn = "用于ContainerRegistry - AccessCS（ContainerRegistry - AccessCS）的服务关联角色，ContainerRegistry - AccessCS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForContainerRegistryAccessCS"
    }
    AliyunServiceRoleForDAS = {
      id             = "hdm.aliyuncs.com"
      description    = "Service Linked Role for Database Autonomy Service. Database Autonomy Service will use this role to access your resources in other services."
      description_cn = "用于数据库自治服务（原混合云数据库管理HDM）的服务关联角色，数据库自治服务使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDAS"
    }
    AliyunServiceRoleForDCDNLogDelivery = {
      id             = "logdelivery.dcdn.aliyuncs.com"
      description    = "Service Linked Role for DCDN-LogDelivery. DCDN-LogDelivery will use this role to access your resources in other services."
      description_cn = "用于全站加速-日志交付（DCDN-LogDelivery）的服务关联角色，DCDN-LogDelivery使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDCDNLogDelivery"
    }
    AliyunServiceRoleForDCDNMultiAccount = {
      id             = "multiaccount.dcdn.aliyuncs.com"
      description    = "Service Linked Role for DCDN - Multi Account Integration. DCDN - Multi Account Integration will use this role to access your resources in other services."
      description_cn = "用于全站加速 - 多账号集成管理（DCDN - Multi Account Integration）的服务关联角色，DCDN - Multi Account Integration使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDCDNMultiAccount"
    }
    AliyunServiceRoleForDCDNRealTimeLogDelivery = {
      id             = "realtimelogdelivery.dcdn.aliyuncs.com"
      description    = "Service Linked Role for DCDN-RealTimeLogDelivery. DCDN-RealTimeLogDelivery will use this role to access your resources in other services."
      description_cn = "用于全站加速-实时日志投递（DCDN-RealTimeLogDelivery）的服务关联角色，DCDN-RealTimeLogDelivery使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDCDNRealTimeLogDelivery"
    }
    AliyunServiceRoleForDMS = {
      id             = "dms.aliyuncs.com"
      description    = "Service Linked Role for DMS. DMS will use this role to access your resources in other services."
      description_cn = "用于数据管理服务（DMS）的服务关联角色，DMS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDMS"
    }
    AliyunServiceRoleForSDDP = {
      id             = "sddp.aliyuncs.com"
      description    = "Service Linked Role for Sensitive Data Discovery and Protection. Sensitive Data Discovery and Protection will use this role to access your resources in other services."
      description_cn = "用于敏感数据保护（Sensitive Data Discovery and Protection）的服务关联角色，敏感数据保护使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForSDDP"
    }
    AliyunServiceRoleForDataworksDataMap = {
      id             = "datamap.dataworks.aliyuncs.com"
      description    = "Service Linked Role for Dataworks - Data Map. Dataworks - Data Map will use this role to access your resources in other services."
      description_cn = "用于大数据开发治理平台 - 数据地图（Dataworks - Data Map）的服务关联角色，Dataworks - Data Map使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDataworksDataMap"
    }
    AliyunServiceRoleForDataWorksOpenPlatform = {
      id             = "openplatform.dataworks.aliyuncs.com"
      description    = "Service Linked Role for DataWorks-OpenPlatform. DataWorks-OpenPlatform will use this role to access your resources in other services."
      description_cn = "用于DataWorks开放平台（DataWorks-OpenPlatform）的服务关联角色，DataWorks-OpenPlatform使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDataWorksOpenPlatform"
    }
    AliyunServiceRoleForDataworksOnEmr = {
      id             = "emr.dataworks.aliyuncs.com"
      description    = "Service Linked Role for Dataworks - OnEmr. Dataworks - OnEmr will use this role to access your resources in other services."
      description_cn = "用于Dataworks - 操作EMR（Dataworks - OnEmr）的服务关联角色，Dataworks - OnEmr使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDataworksOnEmr"
    }
    AliyunServiceRoleForDataworksEngine = {
      id             = "engine.dataworks.aliyuncs.com"
      description    = "Service Linked Role for dataworks-engine. dataworks-engine will use this role to access your resources in other services."
      description_cn = "用于dataworks-引擎访问（dataworks-engine）的服务关联角色，dataworks-engine使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDataworksEngine"
    }
    AliyunServiceRoleForDataWorksAccessDLF = {
      id             = "dlf.dataworks.aliyuncs.com"
      description    = "Service Linked Role for for DataWorks access to the resources of DLF. for DataWorks access to the resources of DLF will use this role to access your resources in other services."
      description_cn = "用于Dataworks 安全中心访问DLF资源（for DataWorks access to the resources of DLF）的服务关联角色，for DataWorks access to the resources of DLF使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDataWorksAccessDLF"
    }
    AliyunServiceRoleForDataWorksDI = {
      id             = "di.dataworks.aliyuncs.com"
      description    = "Service Linked Role for DataWorks DI. DataWorks DI will use this role to access your resources in other services."
      description_cn = "用于DataWorks DI的服务关联角色，DataWorks DI使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDataWorksDI"
    }
    AliyunServiceRoleForDataWorks = {
      id             = "dataworks.aliyuncs.com"
      description    = "Service Linked Role for DataWorks. DataWorks will use this role to access your resources in other services."
      description_cn = "用于DataWorks（DataWorks）的服务关联角色，DataWorks使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDataWorks"
    }
    AliyunServiceRoleForDBS = {
      id             = "dbs.aliyuncs.com"
      description    = "Service Linked Role for Database Backup Service. Database Backup Service will use this role to access your resources in other services."
      description_cn = "用于数据库备份（DBS）的服务关联角色，数据库备份使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDBS"
    }
    AliyunServiceRoleForDbfs = {
      id             = "dbfs.aliyuncs.com"
      description    = "Service Linked Role for DBFS. DBFS will use this role to access your resources in other services."
      description_cn = "用于数据库文件存储的服务关联角色，DBFS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDbfs"
    }
    AliyunServiceRoleForDataHub = {
      id             = "datahub.aliyuncs.com"
      description    = "Service Linked Role for DataHub. DataHub will use this role to access your resources in other services."
      description_cn = "用于数据总线（DataHub）的服务关联角色，DataHub使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDataHub"
    }
    AliyunServiceRoleForDataHubDWConnection = {
      id             = "dwconnection.datahub.aliyuncs.com"
      description    = "Service Linked Role for Datahub - Dataworks Connection. Datahub - Dataworks Connection will use this role to access your resources in other services."
      description_cn = "用于数据总线 - Dataworks集成（Datahub - Dataworks Connection）的服务关联角色，Datahub - Dataworks Connection使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForDataHubDWConnection"
    }
    AliyunServiceRoleForEMRStarRocks = {
      id             = "starrocks.aliyuncs.com"
      description    = "Service Linked Role for EMR StarRocks. EMR StarRocks will use this role to access your resources in other services."
      description_cn = "用于EMR StarRocks（EMR StarRocks）的服务关联角色，EMR StarRocks使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEMRStarRocks"
    }
    AliyunServiceRoleForEBS = {
      id             = "ebs.aliyuncs.com"
      description    = "Service Linked Role for EBS. EBS will use this role to access your resources in other services."
      description_cn = "用于块存储（EBS）的服务关联角色，EBS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEBS"
    }
    AliyunServiceRoleForECSArchiving = {
      id             = "archiving.ecs.aliyuncs.com"
      description    = "Service Linked Role for ECS-Archiving. ECS-Archiving will use this role to access your resources in other services."
      description_cn = "用于云服务器-存档服务（ECS-Archiving）的服务关联角色，ECS-Archiving使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForECSArchiving"
    }
    AliyunServiceRoleForECSAutoProvisioning = {
      id             = "autoprovisioning.ecs.aliyuncs.com"
      description    = "Service Linked Role for ECS - AutoProvisioning. ECS - AutoProvisioning will use this role to access your resources in other services."
      description_cn = "用于云服务器 - 弹性供应（ECS - AutoProvisioning）的服务关联角色，ECS - AutoProvisioning使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForECSAutoProvisioning"
    }
    AliyunServiceRoleForECSSelfService = {
      id             = "selfservice.ecs.aliyuncs.com"
      description    = "Service Linked Role for ECSSelfService. ECSSelfService will use this role to access your resources in other services."
      description_cn = "用于ECS自服务产品（ECSSelfService）的服务关联角色，ECSSelfService使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForECSSelfService"
    }
    AliyunServiceRoleForECSImageBuilder = {
      id             = "imagebuilder.ecs.aliyuncs.com"
      description    = "Service Linked Role for ECS - ImageBuilder. ECS - ImageBuilder will use this role to access your resources in other services."
      description_cn = "用于云服务器 - 镜像构建服务（ECS - ImageBuilder）的服务关联角色，ECS - ImageBuilder使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForECSImageBuilder"
    }
    AliyunServiceRoleForECSNetworkInsights = {
      id             = "network-insights.ecs.aliyuncs.com"
      description    = "Service Linked Role for ECS - NetworkInsights. ECS - NetworkInsights will use this role to access your resources in other services."
      description_cn = "用于云服务器 - 网络连通性诊断（ECS - NetworkInsights）的服务关联角色，ECS - NetworkInsights使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForECSNetworkInsights"
    }
    AliyunServiceRoleForECSWorkbench = {
      id             = "workbench.ecs.aliyuncs.com"
      description    = "Service Linked Role for ECS - Workbench. ECS - Workbench will use this role to access your resources in other services."
      description_cn = "用于弹性计算套件 - 工作台（ECS - Workbench）的服务关联角色，ECS - Workbench使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForECSWorkbench"
    }
    AliyunServiceRoleForECSResourceClean = {
      id             = "resource-clean.ecs.aliyuncs.com"
      description    = "Service Linked Role for ECS - Clean related resources. ECS - Clean related resources will use this role to access your resources in other services."
      description_cn = "用于ECS- 清理ECS关联资源（ECS - Clean related resources）的服务关联角色，ECS - Clean related resources使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForECSResourceClean"
    }
    AliyunServiceRoleForENS = {
      id             = "ens.aliyuncs.com"
      description    = "Service Linked Role for Edge Node Service. Edge Node Service will use this role to access your resources in other services."
      description_cn = "用于边缘节点服务的服务关联角色，边缘节点服务使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForENS"
    }
    AliyunServiceRoleForENSNetworkResourceManager = {
      id             = "ensforesk.ens.aliyuncs.com"
      description    = "Service Linked Role for Edge Node Service. Edge Node Service will use this role to access your resources in other services."
      description_cn = "用于边缘节点服务（Edge Node Service）的服务关联角色，Edge Node Service使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForENSNetworkResourceManager"
    }
    AliyunServiceRoleForENSResourceManager = {
      id             = "ensforfdn.ens.aliyuncs.com"
      description    = "Service Linked Role for Edge Node Service. Edge Node Service will use this role to access your resources in other services."
      description_cn = "用于边缘节点服务（Edge Node Service）的服务关联角色，Edge Node Service使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForENSResourceManager"
    }
    AliyunServiceRoleForEnsDiskEncrypt = {
      id             = "diskencrypt.ens.aliyuncs.com"
      description    = "Service Linked Role for Edge Node Service. Edge Node Service will use this role to access your resources in other services."
      description_cn = "用于边缘节点服务（Edge Node Service）的服务关联角色，Edge Node Service使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEnsDiskEncrypt"
    }
    AliyunServiceRoleForEfloVcc = {
      id             = "vcc.eflo.aliyuncs.com"
      description    = "Service Linked Role for Eflo-VirtualCloudConnection. Eflo-VirtualCloudConnection will use this role to access your resources in other services."
      description_cn = "用于智能计算灵骏-灵骏连接（LINGJUN Link）的服务关联角色，灵骏连接使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEfloVcc"
    }
    AliyunServiceRoleForEfloCnp = {
      id             = "cnp.eflo.aliyuncs.com"
      description    = "Service Linked Role for cnp. cnp will use this role to access your resources in other services."
      description_cn = "用于灵骏智算-性能评测（cnp）的服务关联角色，cnp使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEfloCnp"
    }
    AliyunServiceRoleForEais = {
      id             = "eais.aliyuncs.com"
      description    = "Service Linked Role for Eais. Eais will use this role to access your resources in other services."
      description_cn = "用于Eais的服务关联角色，弹性加速计算实例(Eais)使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEais"
    }
    AliyunServiceRoleForECI = {
      id             = "eci.aliyuncs.com"
      description    = "Service Linked Role for Elastic Container Instance. Elastic Container Instance will use this role to access your resources in other services."
      description_cn = "用于弹性容器实例（Elastic Container Instance）的服务关联角色，Elastic Container Instance使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForECI"
    }
    AliyunServiceRoleForECIVnode = {
      id             = "vnode.eci.aliyuncs.com"
      description    = "Service Linked Role for ECI-VNODE. ECI-VNODE will use this role to access your resources in other services."
      description_cn = "用于弹性容器实例-虚拟节点（ECI-VNODE）的服务关联角色，ECI-VNODE使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForECIVnode"
    }
    AliyunServiceRoleForEHPC = {
      id             = "ehpc.aliyuncs.com"
      description    = "Service Linked Role for Elastic High Performance Computing. Elastic High Performance Computing will use this role to access your resources in other services."
      description_cn = "用于弹性高性能计算（Elastic High Performance Computing）的服务关联角色，Elastic High Performance Computing使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEHPC"
    }
    AliyunServiceRoleForEHPCManagedNetwork = {
      id             = "managed-network.ehpc.aliyuncs.com"
      description    = "Service Linked Role for E-HPC - ManagedNetwork. E-HPC - ManagedNetwork will use this role to access your resources in other services."
      description_cn = "用于弹性高性能计算 - 网络管理（E-HPC - ManagedNetwork）的服务关联角色，E-HPC - ManagedNetwork使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEHPCManagedNetwork"
    }
    AliyunServiceRoleForElasticsearchOps = {
      id             = "ops.elasticsearch.aliyuncs.com"
      description    = "Service Linked Role for ElasticsearchOps. ElasticsearchOps will use this role to access your resources in other services."
      description_cn = "用于Elasticsearch运维服务（ElasticsearchOps）的服务关联角色，ElasticsearchOps使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForElasticsearchOps"
    }
    AliyunServiceRoleForElasticsearchCollector = {
      id             = "collector.elasticsearch.aliyuncs.com"
      description    = "Service Linked Role for Elasticsearch - Collector. Elasticsearch - Collector will use this role to access your resources in other services."
      description_cn = "用于Elasticsearch - 数据采集服务（Elasticsearch - Collector）的服务关联角色，Elasticsearch - Collector使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForElasticsearchCollector"
    }
    AliyunServiceRoleForElasticsearch = {
      id             = "elasticsearch.aliyuncs.com"
      description    = "Service Linked Role for Elasticsearch on ECI. Elasticsearch on ECI will use this role to access your resources in other services."
      description_cn = "用于Elasticsearch 弹性容器（Elasticsearch on ECI）的服务关联角色，Elasticsearch on ECI使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForElasticsearch"
    }
    AliyunServiceRoleForEventBridgeSendToFC = {
      id             = "sendevent-fc.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for Event Bridge - Send to Function Compute. Event Bridge - Send to Function Compute will use this role to access your resources in other services."
      description_cn = "用于事件总线 - 发送至函数计算（Event Bridge - Send to Function Compute）的服务关联角色，Event Bridge - Send to Function Compute使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeSendToFC"
    }
    AliyunServiceRoleForEventBridgeSendToMNS = {
      id             = "sendevent-mns.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for Event Bridge - Send to MNS. Event Bridge - Send to MNS will use this role to access your resources in other services."
      description_cn = "用于事件总线 - 发送至消息服务（Event Bridge - Send to MNS）的服务关联角色，Event Bridge - Send to MNS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeSendToMNS"
    }
    AliyunServiceRoleForEventBridgeSendToSMS = {
      id             = "sendevent-sms.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for Event Bridge - Send to SMS. Event Bridge - Send to SMS will use this role to access your resources in other services."
      description_cn = "用于事件总线 - 发送至短信服务（Event Bridge - Send to SMS）的服务关联角色，Event Bridge - Send to SMS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeSendToSMS"
    }
    AliyunServiceRoleForEventBridgeSendToDirectMail = {
      id             = "sendevent-directmail.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for Event Bridge - Send to Direct Mail. Event Bridge - Send to Direct Mail will use this role to access your resources in other services."
      description_cn = "用于事件总线 - 发送至邮件推送服务（Event Bridge - Send to Direct Mail）的服务关联角色，Event Bridge - Send to Direct Mail使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeSendToDirectMail"
    }
    AliyunServiceRoleForEventBridgeSourceRocketMQ = {
      id             = "source-rocketmq.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for EventBridge - RocketMQ Source. EventBridge - RocketMQ Source will use this role to access your resources in other services."
      description_cn = "用于事件总线 - RocketMQ源（EventBridge - RocketMQ Source）的服务关联角色，EventBridge - RocketMQ Source使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeSourceRocketMQ"
    }
    AliyunServiceRoleForEventBridgeConnectVPC = {
      id             = "connect-vpc.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for EventBridge Connect User's VPC. EventBridge Connect User's VPC will use this role to access your resources in other services."
      description_cn = "用于事件总线连接用户VPC（EventBridge Connect User's VPC）的服务关联角色，EventBridge Connect User's VPC使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeConnectVPC"
    }
    AliyunServiceRoleForEventBridgeSourceActionTrail = {
      id             = "source-actiontrail.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for EventBridge - ActionTrail Source. EventBridge - ActionTrail Source will use this role to access your resources in other services."
      description_cn = "用于事件总线 - 操作审计源（EventBridge - ActionTrail Source）的服务关联角色，EventBridge - ActionTrail Source使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeSourceActionTrail"
    }
    AliyunServiceRoleForEventBridgeSourceRabbitMQ = {
      id             = "source-rabbitmq.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for EventBridge - RabbitMQ Source. EventBridge - RabbitMQ Source will use this role to access your resources in other services."
      description_cn = "用于事件总线 - RabbitMQ 源（EventBridge - RabbitMQ Source）的服务关联角色，EventBridge - RabbitMQ Source使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeSourceRabbitMQ"
    }
    AliyunServiceRoleForEventBridgeSendToRabbitMQ = {
      id             = "sendevent-rabbitmq.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for EventBridge send to RabbitMQ. EventBridge send to RabbitMQ will use this role to access your resources in other services."
      description_cn = "用于事件总线 - 发送至RabbitMQ（EventBridge send to RabbitMQ）的服务关联角色，EventBridge send to RabbitMQ使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeSendToRabbitMQ"
    }
    AliyunServiceRoleForEventBridgeSendToRocketMQ = {
      id             = "sendevent-rocketmq.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for EventBridge send to RocketMQ. EventBridge send to RocketMQ will use this role to access your resources in other services."
      description_cn = "用于事件总线 - 发送至RocketMQ（EventBridge send to RocketMQ）的服务关联角色，EventBridge send to RocketMQ使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeSendToRocketMQ"
    }
    AliyunServiceRoleForEventBridgeSourceMqtt = {
      id             = "source-mqtt.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for EventBridge. EventBridge will use this role to access your resources in other services."
      description_cn = "用于事件总线（EventBridge）的服务关联角色，EventBridge使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeSourceMqtt"
    }
    AliyunServiceRoleForEventBridgeSendToSAE = {
      id             = "sendevent-sae.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for Event Bridge - Send to Serverless App Engine. Event Bridge - Send to Serverless App Engine will use this role to access your resources in other services."
      description_cn = "用于事件总线 - 发送至Serverless应用引擎（Event Bridge - Send to Serverless App Engine）的服务关联角色，Event Bridge - Send to Serverless App Engine使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeSendToSAE"
    }
    AliyunServiceRoleForEventBridgeSendToRDS = {
      id             = "sendevent-rds.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for EventBridge - Send to RDS. EventBridge - Send to RDS will use this role to access your resources in other services."
      description_cn = "用于事件总线 - 发送至RDS（EventBridge - Send to RDS）的服务关联角色，EventBridge - Send to RDS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeSendToRDS"
    }
    AliyunServiceRoleForEventBridgeSourceKafka = {
      id             = "source-kafka.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for EventBridge - Alikafka Source. EventBridge - Alikafka Source will use this role to access your resources in other services."
      description_cn = "用于事件总线 - 消息队列Kafka源（EventBridge - Alikafka Source）的服务关联角色，EventBridge - Alikafka Source使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeSourceKafka"
    }
    AliyunServiceRoleForEventBridgeSendToKafka = {
      id             = "sendevent-kafka.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for EventBridge - send to Alikafka. EventBridge - send to Alikafka will use this role to access your resources in other services."
      description_cn = "用于事件总线 - 发送至消息队列Kafka（EventBridge - send to Alikafka）的服务关联角色，EventBridge - send to Alikafka使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeSendToKafka"
    }
    AliyunServiceRoleForEventBridgeSourceCMS = {
      id             = "source-cms.eventbridge.aliyuncs.com"
      description    = "Service Linked Role for EventBridge - CloudMonitor Source. EventBridge - CloudMonitor Source will use this role to access your resources in other services."
      description_cn = "用于事件总线 - 云监控源（EventBridge - CloudMonitor Source）的服务关联角色，EventBridge - CloudMonitor Source使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForEventBridgeSourceCMS"
    }
    AliyunServiceRoleForFC = {
      id             = "fc.aliyuncs.com"
      description    = "Service Linked Role for Function Compute. Function Compute will use this role to access your resources in other services."
      description_cn = "用于函数计算（Function Compute）的服务关联角色，Function Compute使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForFC"
    }
    AliyunServiceRoleForGaVpcEndpoint = {
      id             = "vpcendpoint.ga.aliyuncs.com"
      description    = "Service Linked Role for Global Accelerator - VPC Endpoint. Global Accelerator - VPC Endpoint will use this role to access your resources in other services."
      description_cn = "用于全球加速 - 私网加速（Global Accelerator - VPC Endpoint）的服务关联角色，Global Accelerator - VPC Endpoint使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForGaVpcEndpoint"
    }
    AliyunServiceRoleForGaCdt = {
      id             = "cdt.ga.aliyuncs.com"
      description    = "Service Linked Role for GA - CDT. GA - CDT will use this role to access your resources in other services."
      description_cn = "用于全球加速 - 云数据传输（GA - CDT）的服务关联角色，GA - CDT使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForGaCdt"
    }
    AliyunServiceRoleForGaSsl = {
      id             = "ssl.ga.aliyuncs.com"
      description    = "Service Linked Role for GA - SSL. GA - SSL will use this role to access your resources in other services."
      description_cn = "用于全球加速 - 数字证书管理（GA - SSL）的服务关联角色，GA - SSL使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForGaSsl"
    }
    AliyunServiceRoleForGaAntiDdos = {
      id             = "ddos.ga.aliyuncs.com"
      description    = "Service Linked Role for Global Accelerator - Anti Ddos. Global Accelerator - Anti Ddos will use this role to access your resources in other services."
      description_cn = "用于全球加速 - 分布式拒绝服务攻击防护（Global Accelerator - Anti Ddos）的服务关联角色，Global Accelerator - Anti Ddos使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForGaAntiDdos"
    }
    AliyunServiceRoleForGaFlowlog = {
      id             = "flowlog.ga.aliyuncs.com"
      description    = "Service Linked Role for GA-FlowLog. GA-FlowLog will use this role to access your resources in other services."
      description_cn = "用于全球加速-流日志（GA-FlowLog）的服务关联角色，GA-FlowLog使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForGaFlowlog"
    }
    AliyunServiceRoleForGaOss = {
      id             = "oss.ga.aliyuncs.com"
      description    = "Service Linked Role for GA - OSS. GA - OSS will use this role to access your resources in other services."
      description_cn = "用于全球加速 - 对象存储服务（GA - OSS）的服务关联角色，GA - OSS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForGaOss"
    }
    AliyunServiceRoleForGaAlb = {
      id             = "alb.ga.aliyuncs.com"
      description    = "Service Linked Role for GA - ALB. GA - ALB will use this role to access your resources in other services."
      description_cn = "用于全球加速 - 应用型负载均衡（GA - ALB）的服务关联角色，GA - ALB使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForGaAlb"
    }
    AliyunServiceRoleForGaNlb = {
      id             = "nlb.ga.aliyuncs.com"
      description    = "Service Linked Role for GA - NLB. GA - NLB will use this role to access your resources in other services."
      description_cn = "用于全球加速 - 网络型负载均衡（GA - NLB）的服务关联角色，GA - NLB使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForGaNlb"
    }
    AliyunServiceRoleForHBaseEncryption = {
      id             = "encryption.hbase.aliyuncs.com"
      description    = "Service Linked Role for HBase - Encryption. HBase - Encryption will use this role to access your resources in other services."
      description_cn = "用于云数据库HBase - 加密（HBase - Encryption）的服务关联角色，HBase - Encryption使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForHBaseEncryption"
    }
    AliyunServiceRoleForHologresUserMgmt = {
      id             = "usermgmt.hologres.aliyuncs.com"
      description    = "Service Linked Role for Hologres - User Management. Hologres - User Management will use this role to access your resources in other services."
      description_cn = "用于交互式分析 - 用户管理（Hologres - User Management）的服务关联角色，Hologres - User Management使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForHologresUserMgmt"
    }
    AliyunServiceRoleForHologresIdentityMgmt = {
      id             = "identity.hologres.aliyuncs.com"
      description    = "Service Linked Role for HologresIdentityMgmt. HologresIdentityMgmt will use this role to access your resources in other services."
      description_cn = "用于Hologres - 身份管理（HologresIdentityMgmt）的服务关联角色，HologresIdentityMgmt使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForHologresIdentityMgmt"
    }
    AliyunServiceRoleForHbrDr = {
      id             = "dr.hbr.aliyuncs.com"
      description    = "Service Linked Role for Cloud Backup - ECS Disaster Recovery. Cloud Backup - ECS Disaster Recovery will use this role to access your resources in other services."
      description_cn = "用于云备份 - ECS容灾（Cloud Backup - ECS Disaster Recovery）的服务关联角色，Cloud Backup - ECS Disaster Recovery使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForHbrDr"
    }
    AliyunServiceRoleForHbrEcsBackup = {
      id             = "ecsbackup.hbr.aliyuncs.com"
      description    = "Service Linked Role for Cloud Backup - ECS Backup. Cloud Backup - ECS Backup will use this role to access your resources in other services."
      description_cn = "用于云备份 - ECS备份（Cloud Backup - ECS Backup）的服务关联角色，Cloud Backup - ECS Backup使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForHbrEcsBackup"
    }
    AliyunServiceRoleForHbrOssBackup = {
      id             = "ossbackup.hbr.aliyuncs.com"
      description    = "Service Linked Role for Cloud Backup - OSS Backup. Cloud Backup - OSS Backup will use this role to access your resources in other services."
      description_cn = "用于云备份 - 对象存储备份（Cloud Backup - OSS Backup）的服务关联角色，Cloud Backup - OSS Backup使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForHbrOssBackup"
    }
    AliyunServiceRoleForHbrNasBackup = {
      id             = "nasbackup.hbr.aliyuncs.com"
      description    = "Service Linked Role for Cloud Backup - NAS Backup. Cloud Backup - NAS Backup will use this role to access your resources in other services."
      description_cn = "用于云备份 - 文件存储备份（Cloud Backup - NAS Backup）的服务关联角色，Cloud Backup - NAS Backup使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForHbrNasBackup"
    }
    AliyunServiceRoleForHbrCsgBackup = {
      id             = "csgbackup.hbr.aliyuncs.com"
      description    = "Service Linked Role for Cloud Backup - CSG Backup. Cloud Backup - CSG Backup will use this role to access your resources in other services."
      description_cn = "用于云备份 - 云存储网关备份（Cloud Backup - CSG Backup）的服务关联角色，Cloud Backup - CSG Backup使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForHbrCsgBackup"
    }
    AliyunServiceRoleForHbrVaultEncryption = {
      id             = "vaultencryption.hbr.aliyuncs.com"
      description    = "Service Linked Role for Cloud Backup - Vault Encryption. Cloud Backup - Vault Encryption will use this role to access your resources in other services."
      description_cn = "用于云备份 - 备份库加密（Cloud Backup - Vault Encryption）的服务关联角色，Cloud Backup - Vault Encryption使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForHbrVaultEncryption"
    }
    AliyunServiceRoleForHbrOtsBackup = {
      id             = "otsbackup.hbr.aliyuncs.com"
      description    = "Service Linked Role for Cloud Backup - OTS Backup. Cloud Backup - OTS Backup will use this role to access your resources in other services."
      description_cn = "用于云备份 - 表格存储备份（Cloud Backup - OTS Backup）的服务关联角色，Cloud Backup - OTS Backup使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForHbrOtsBackup"
    }
    AliyunServiceRoleForHbrEcsEncryption = {
      id             = "ecsencryption.hbr.aliyuncs.com"
      description    = "Service Linked Role for Cloud Backup - ECS backup encrypted replication. Cloud Backup - ECS backup encrypted replication will use this role to access your resources in other services."
      description_cn = "用于云备份 - ECS备份加密复制（Cloud Backup - ECS backup encrypted replication）的服务关联角色，Cloud Backup - ECS backup encrypted replication使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForHbrEcsEncryption"
    }
    AliyunServiceRoleForHbrCrossAccountBackup = {
      id             = "crossbackup.hbr.aliyuncs.com"
      description    = "Service Linked Role for Cloud Backup - Cross account backup. Cloud Backup - Cross account backup will use this role to access your resources in other services."
      description_cn = "用于云备份-跨账号备份（Cloud Backup - Cross account backup）的服务关联角色，Cloud Backup - Cross account backup使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForHbrCrossAccountBackup"
    }
    AliyunServiceRoleForIoTDeviceFileUpload = {
      id             = "device-file-upload.iot.aliyuncs.com"
      description    = "Service Linked Role for IOT - Device File Upload. IOT - Device File Upload will use this role to access your resources in other services."
      description_cn = "用于物联网平台 - 设备文件上传（IOT - Device File Upload）的服务关联角色，IOT - Device File Upload使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForIoTDeviceFileUpload"
    }
    AliyunServiceRoleForIoTLogExport = {
      id             = "log-export.iot.aliyuncs.com"
      description    = "Service Linked Role for IoT Platform Log Export. IoT Platform Log Export will use this role to access your resources in other services."
      description_cn = "用于物联网平台日志导出的服务关联角色，IoT Platform Log Export使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForIoTLogExport"
    }
    AliyunServiceRoleForIoTRuleengineLindorm = {
      id             = "ruleengine-lindorm.iot.aliyuncs.com"
      description    = "Service Linked Role for IoT Platform - Ruleengine to Lindorm. IoT Platform - Ruleengine to Lindorm will use this role to access your resources in other services."
      description_cn = "用于物联网平台 - 规则引擎流转Lindorm（IoT Platform - Ruleengine to Lindorm）的服务关联角色，IoT Platform - Ruleengine to Lindorm使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForIoTRuleengineLindorm"
    }
    AliyunServiceRoleForIOTInstanceNetwork = {
      id             = "iot-instance-network.iot.aliyuncs.com"
      description    = "Service Linked Role for IoT - InstanceNetwork. IoT - InstanceNetwork will use this role to access your resources in other services."
      description_cn = "用于物联网套件 - 实例网络（IoT - InstanceNetwork）的服务关联角色，IoT - InstanceNetwork使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForIOTInstanceNetwork"
    }
    AliyunServiceRoleForIoTCloudSource = {
      id             = "iot-cloud-source.iot.aliyuncs.com"
      description    = "Service Linked Role for IoT Platform Data Service - cloud source. IoT Platform Data Service - cloud source will use this role to access your resources in other services."
      description_cn = "用于物联网平台数据服务 - 云产品数据源（IoT Platform Data Service - cloud source）的服务关联角色，IoT Platform Data Service - cloud source使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForIoTCloudSource"
    }
    AliyunServiceRoleForGatewayCertConfig = {
      id             = "gateway-cert-config.iot.aliyuncs.com"
      description    = "Service Linked Role for GatewayCertConfig. GatewayCertConfig will use this role to access your resources in other services."
      description_cn = "用于云网关证书管理（GatewayCertConfig）的服务关联角色，GatewayCertConfig使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForGatewayCertConfig"
    }
    AliyunServiceRoleForIoTRuleenginePolarDB = {
      id             = "ruleengine-polardb.iot.aliyuncs.com"
      description    = "Service Linked Role for IoT Platform - Ruleengine to PolarDB. IoT Platform - Ruleengine to PolarDB will use this role to access your resources in other services."
      description_cn = "用于物联网平台 - 规则引擎流转PolarDB（IoT Platform - Ruleengine to PolarDB）的服务关联角色，IoT Platform - Ruleengine to PolarDB使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForIoTRuleenginePolarDB"
    }
    AliyunServiceRoleForKMSSecretsManagerForRDS = {
      id             = "secretsmanager-rds.kms.aliyuncs.com"
      description    = "Service Linked Role for Key Management Service - Secrets Manager for RDS. Key Management Service - Secrets Manager for RDS will use this role to access your resources in other services."
      description_cn = "用于密钥管理服务 - 凭据管家 RDS版（Key Management Service - Secrets Manager for RDS）的服务关联角色，Key Management Service - Secrets Manager for RDS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForKMSSecretsManagerForRDS"
    }
    AliyunServiceRoleForKMSKeyStore = {
      id             = "keystore.kms.aliyuncs.com"
      description    = "Service Linked Role for Key Management Service - Key Store. Key Management Service - Key Store will use this role to access your resources in other services."
      description_cn = "用于密钥管理服务 - 密钥存储（Key Management Service - Key Store）的服务关联角色，Key Management Service - Key Store使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForKMSKeyStore"
    }
    AliyunServiceRoleForKMSSecretsManagerForECS = {
      id             = "secretsmanager-ecs.kms.aliyuncs.com"
      description    = "Service Linked Role for Key Management Service - Secrets Manager for ECS. Key Management Service - Secrets Manager for ECS will use this role to access your resources in other services."
      description_cn = "用于秘钥管理服务-凭据管家ECS版（Key Management Service - Secrets Manager for ECS）的服务关联角色，Key Management Service - Secrets Manager for ECS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForKMSSecretsManagerForECS"
    }
    AliyunServiceRoleForSLSAlert = {
      id             = "alert.log.aliyuncs.com"
      description    = "Service Linked Role for SLS - Alert. SLS - Alert will use this role to access your resources in other services."
      description_cn = "用于日志服务 - 告警（SLS - Alert）的服务关联角色，SLS - Alert使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForSLSAlert"
    }
    AliyunServiceRoleForSLSAudit = {
      id             = "audit.log.aliyuncs.com"
      description    = "Service Linked Role for LogService - LogAudit. LogService - LogAudit will use this role to access your resources in other services."
      description_cn = "用于日志服务 - 日志审计（LogService - LogAudit）的服务关联角色，LogService - LogAudit使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForSLSAudit"
    }
    AliyunServiceRoleForSLSMiddlewareLens = {
      id             = "middlewarelens.log.aliyuncs.com"
      description    = "Service Linked Role for SLS - MiddlewareLens. SLS - MiddlewareLens will use this role to access your resources in other services."
      description_cn = "用于日志服务 - 中间件日志洞察（SLS - MiddlewareLens）的服务关联角色，SLS - MiddlewareLens使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForSLSMiddlewareLens"
    }
    AliyunServiceRoleForSLSSecurityLens = {
      id             = "securitylens.log.aliyuncs.com"
      description    = "Service Linked Role for Log - SecurityLens. Log - SecurityLens will use this role to access your resources in other services."
      description_cn = "用于日志服务 - 安全日志洞察（Log - SecurityLens）的服务关联角色，Log - SecurityLens使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForSLSSecurityLens"
    }
    AliyunServiceRoleForSLSAILens = {
      id             = "ai-lens.log.aliyuncs.com"
      description    = "Service Linked Role for Log - AI Lens. Log - AI Lens will use this role to access your resources in other services."
      description_cn = "用于日志服务-AI日志洞察（Log - AI Lens）的服务关联角色，Log - AI Lens使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForSLSAILens"
    }
    AliyunServiceRoleForSLSStorageLens = {
      id             = "storagelens.log.aliyuncs.com"
      description    = "Service Linked Role for Log - Storage Lens. Log - Storage Lens will use this role to access your resources in other services."
      description_cn = "用于日志服务 - 存储日志洞察（Log - StorageLens）的服务关联角色，Log - Storage Lens使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForSLSStorageLens"
    }
    AliyunServiceRoleForSLSFullObserverbility = {
      id             = "fullobserverbility.log.aliyuncs.com"
      description    = "Service Linked Role for LogService - FullObserverbility. LogService - FullObserverbility will use this role to access your resources in other services."
      description_cn = "用于日志服务 - 全栈可观测（LogService - FullObserverbility）的服务关联角色，LogService - FullObserverbility使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForSLSFullObserverbility"
    }
    AliyunServiceRoleForMaxComputeIdentityMgmt = {
      id             = "identity.odps.aliyuncs.com"
      description    = "Service Linked Role for MaxCompute - Identity. MaxCompute - Identity will use this role to access your resources in other services."
      description_cn = "用于MaxCompute - 身份管理（MaxCompute - Identity）的服务关联角色，MaxCompute - Identity使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForMaxComputeIdentityMgmt"
    }
    AliyunServiceRoleForMSE = {
      id             = "mse.aliyuncs.com"
      description    = "Service Linked Role for Microservice Engine. Microservice Engine will use this role to access your resources in other services."
      description_cn = "用于微服务引擎（Microservice Engine）的服务关联角色，Microservice Engine使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForMSE"
    }
    AliyunServiceRoleForMongoDB = {
      id             = "mongodb.aliyuncs.com"
      description    = "Service Linked Role for ApsaraDB For MongoDB. ApsaraDB For MongoDB will use this role to access your resources in other services."
      description_cn = "用于云数据库MongoDB版（ApsaraDB For MongoDB）的服务关联角色，ApsaraDB For MongoDB使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForMongoDB"
    }
    AliyunServiceRoleForNatgw = {
      id             = "nat.aliyuncs.com"
      description    = "Service Linked Role for NAT Gateway. NAT Gateway will use this role to access your resources in other services."
      description_cn = "用于NAT网关（NAT Gateway）的服务关联角色，NAT Gateway使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForNatgw"
    }
    AliyunServiceRoleForNasExtreme = {
      id             = "extreme.nas.aliyuncs.com"
      description    = "Service Linked Role for NAS - Extreme. NAS - Extreme will use this role to access your resources in other services."
      description_cn = "用于文件存储 - 极速型（NAS - Extreme）的服务关联角色，NAS - Extreme使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForNasExtreme"
    }
    AliyunServiceRoleForNasEncryption = {
      id             = "encryption.nas.aliyuncs.com"
      description    = "Service Linked Role for NAS - Encryption. NAS - Encryption will use this role to access your resources in other services."
      description_cn = "用于文件存储 - 加密（NAS - Encryption）的服务关联角色，NAS - Encryption使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForNasEncryption"
    }
    AliyunServiceRoleForNasEcsHandler = {
      id             = "ecs-handler.nas.aliyuncs.com"
      description    = "Service Linked Role for NAS - ECSHandler. NAS - ECSHandler will use this role to access your resources in other services."
      description_cn = "用于文件存储 - ECS命令处理（NAS - ECSHandler）的服务关联角色，NAS - ECSHandler使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForNasEcsHandler"
    }
    AliyunServiceRoleForNasLogDelivery = {
      id             = "logdelivery.nas.aliyuncs.com"
      description    = "Service Linked Role for Nas - LogDelivery. Nas - LogDelivery will use this role to access your resources in other services."
      description_cn = "用于文件存储 - 日志投递（Nas - LogDelivery）的服务关联角色，Nas - LogDelivery使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForNasLogDelivery"
    }
    AliyunServiceRoleForNasBackup = {
      id             = "backup.nas.aliyuncs.com"
      description    = "Service Linked Role for NAS - Backup. NAS - Backup will use this role to access your resources in other services."
      description_cn = "用于文件存储 - 备份（NAS - Backup）的服务关联角色，NAS - Backup使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForNasBackup"
    }
    AliyunServiceRoleForNasOssDataFlow = {
      id             = "oss-dataflow.nas.aliyuncs.com"
      description    = "Service Linked Role for NAS - OSSDataFlow. NAS - OSSDataFlow will use this role to access your resources in other services."
      description_cn = "用于NAS - OSS数据流动（NAS - OSSDataFlow）的服务关联角色，NAS - OSSDataFlow使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForNasOssDataFlow"
    }
    AliyunServiceRoleForNasEventNotification = {
      id             = "event-notification.nas.aliyuncs.com"
      description    = "Service Linked Role for Nas - EventNotification. Nas - EventNotification will use this role to access your resources in other services."
      description_cn = "用于文件存储 - 事件通知（Nas - EventNotification）的服务关联角色，Nas - EventNotification使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForNasEventNotification"
    }
    AliyunServiceRoleForNlb = {
      id             = "nlb.aliyuncs.com"
      description    = "Service Linked Role for Network Load Balancer. Network Load Balancer will use this role to access your resources in other services."
      description_cn = "用于网络型负载均衡器（Network Load Balancer）的服务关联角色，Network Load Balancer使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForNlb"
    }
    AliyunServiceRoleForNLBLogDelivery = {
      id             = "nlb-for-log.nlb.aliyuncs.com"
      description    = "Service Linked Role for NLB - LogDelivery. NLB - LogDelivery will use this role to access your resources in other services."
      description_cn = "用于网络型负载均衡 - 日志投递（NLB - LogDelivery）的服务关联角色，NLB - LogDelivery使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForNLBLogDelivery"
    }
    AliyunServiceRoleForOceanBaseEncryption = {
      id             = "encryption.oceanbase.aliyuncs.com"
      description    = "Service Linked Role for OceanBase-Encryption. OceanBase-Encryption will use this role to access your resources in other services."
      description_cn = "用于奥星贝斯-加密（OceanBase-Encryption）的服务关联角色，OceanBase-Encryption使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForOceanBaseEncryption"
    }
    AliyunServiceRoleForOceanBaseTenantInstance = {
      id             = "tenant-instance.oceanbase.aliyuncs.com"
      description    = "Service Linked Role for OceanBase-TenantInstance. OceanBase-TenantInstance will use this role to access your resources in other services."
      description_cn = "用于奥星贝斯租户实例（OceanBase-TenantInstance）的服务关联角色，OceanBase-TenantInstance使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForOceanBaseTenantInstance"
    }
    AliyunServiceRoleForOceanBaseSecurityGroup = {
      id             = "security-group.oceanbase.aliyuncs.com"
      description    = "Service Linked Role for OceanBase-SecurityGroup. OceanBase-SecurityGroup will use this role to access your resources in other services."
      description_cn = "用于奥星贝斯-安全组（OceanBase-SecurityGroup）的服务关联角色，OceanBase-SecurityGroup使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForOceanBaseSecurityGroup"
    }
    AliyunServiceRoleForOceanbaseMigrationAssessment = {
      id             = "migration-assessment.oceanbase.aliyuncs.com"
      description    = "Service Linked Role for OceanbaseMigrationAssessment. OceanbaseMigrationAssessment will use this role to access your resources in other services."
      description_cn = "用于Oceanbase迁移评估（OceanbaseMigrationAssessment）的服务关联角色，OceanbaseMigrationAssessment使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForOceanbaseMigrationAssessment"
    }
    AliyunServiceRoleForOpenSearch = {
      id             = "opensearch.aliyuncs.com"
      description    = "Service Linked Role for OpenSearch. OpenSearch will use this role to access your resources in other service."
      description_cn = "用于开放搜索服务(OpenSearch)的服务关联角色，开放搜索使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForOpenSearch"
    }
    AliyunServiceRoleForSearchEngine = {
      id             = "searchengine.aliyuncs.com"
      description    = "Service Linked Role for searchengine. searchengine will use this role to access your resources in other services."
      description_cn = "用于开放搜索问天引擎（searchengine）的服务关联角色，searchengine使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForSearchEngine"
    }
    AliyunServiceRoleForOOSBandwidthScheduler = {
      id             = "bandwidthscheduler.oos.aliyuncs.com"
      description    = "Service Linked Role for OOSBandwidthScheduler. OOS will use this role to access your resources in other services."
      description_cn = "用于OOSBandwidthScheduler的服务关联角色，OOS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForOOSBandwidthScheduler"
    }
    AliyunServiceRoleForOOSInstanceScheduler = {
      id             = "instancescheduler.oos.aliyuncs.com"
      description    = "Service Linked Role for OOSInstanceScheduler. OOS will use this role to access your resources in other services."
      description_cn = "用于OOSInstanceScheduler的服务关联角色，OOS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForOOSInstanceScheduler"
    }
    AliyunServiceRoleForOOSExecutionDelivery = {
      id             = "executiondelivery.oos.aliyuncs.com"
      description    = "Service Linked Role for OOS-ExecutionDelivery. OOS-ExecutionDelivery will use this role to access your resources in other services."
      description_cn = "用于运维编排-执行投递（OOS-ExecutionDelivery）的服务关联角色，OOS-ExecutionDelivery使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForOOSExecutionDelivery"
    }
    AliyunServiceRoleForOOSAppliactionManager = {
      id             = "applicationmanager.oos.aliyuncs.com"
      description    = "Service Linked Role for OOS-AppliactionManager. OOS-AppliactionManager will use this role to access your resources in other services."
      description_cn = "用于运维编排-应用管理（OOS-AppliactionManager）的服务关联角色，OOS-AppliactionManager使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForOOSAppliactionManager"
    }
    AliyunServiceRoleForOOSSystemEventOperator = {
      id             = "systemeventoperator.oos.aliyuncs.com"
      description    = "Service Linked Role for OOS - SystemEventOperator. OOS - SystemEventOperator will use this role to access your resources in other services."
      description_cn = "用于运维编排 - 系统事件操作执行（OOS - SystemEventOperator）的服务关联角色，OOS - SystemEventOperator使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForOOSSystemEventOperator"
    }
    AliyunServiceRoleForPolarDB = {
      id             = "polardb.aliyuncs.com"
      description    = "Service Linked Role for PolarDB. PolarDB will use this role to access your resources in other services."
      description_cn = "用于PolarDB的服务关联角色，PolarDB使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForPolarDB"
    }
    AliyunServiceRoleForPrivatelink = {
      id             = "privatelink.aliyuncs.com"
      description    = "Service Linked Role for Endpoint Service. Endpoint Service will use this role to access your resources in other services."
      description_cn = "用于终端节点服务的服务关联角色，Endpoint Service使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForPrivatelink"
    }
    AliyunServiceRoleForPvtz = {
      id             = "pvtz.aliyuncs.com"
      description    = "Service Linked Role for PrivateZone"
      description_cn = "PrivateZone关联角色"
      policy_name    = "AliyunServiceRolePolicyForPvtz"
    }
    AliyunServiceRoleForQuickBI = {
      id             = "bi.aliyuncs.com"
      description    = "Service Linked Role for Quick BI. Quick BI will use this role to access your resources in other services."
      description_cn = "用于Quick BI（Quick BI）的服务关联角色，Quick BI使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForQuickBI"
    }
    AliyunServiceRoleForRdsPgsqlOnEcs = {
      id             = "pgsql-onecs.rds.aliyuncs.com"
      description    = "Service Linked Role for Cloud Relational Database Postgresql-OnEcs. Cloud Relational Database Postgresql-OnEcs will use this role to access your resources in other services."
      description_cn = "用于云关系型数据库 Postgresql-OnEcs（Cloud Relational Database Postgresql-OnEcs）的服务关联角色，Cloud Relational Database Postgresql-OnEcs使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForRdsPgsqlOnEcs"
    }
    AliyunServiceRoleForRdsBackupEncryption = {
      id             = "backupencryption.rds.aliyuncs.com"
      description    = "Service Linked Role for RDS Backup Encryption. RDS Backup Encryption will use this role to access your resources in other services."
      description_cn = "用于RDS备份加密（RDS Backup Encryption）的服务关联角色，RDS Backup Encryption使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForRdsBackupEncryption"
    }
    AliyunServiceRoleForRDSGAD = {
      id             = "gad.rds.aliyuncs.com"
      description    = "Service Linked Role for Ralational Database-Global Active Database(GAD). Ralational Database-Global Active Database(GAD) will use this role to access your resources in other services."
      description_cn = "用于云数据库-全球多活（Ralational Database-Global Active Database(GAD)）的服务关联角色，Ralational Database-Global Active Database(GAD)使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForRDSGAD"
    }
    AliyunServiceRoleForRDSProxyOnEcs = {
      id             = "rdsproxy-onecs.rds.aliyuncs.com"
      description    = "Service Linked Role for RDS - Proxy. RDS - Proxy will use this role to access your resources in other services."
      description_cn = "用于RDS - 数据库代理（RDS - Proxy）的服务关联角色，RDS - Proxy使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForRDSProxyOnEcs"
    }
    AliyunServiceRoleForRdsMyBaseProprietary = {
      id             = "mybase-proprietary.rds.aliyuncs.com"
      description    = "Service Linked Role for RDS - MyBase Proprietary Edition. RDS - MyBase Proprietary Edition will use this role to access your resources in other services."
      description_cn = "用于RDS - MyBase 专有版（RDS - MyBase Proprietary Edition）的服务关联角色，RDS - MyBase Proprietary Edition使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForRdsMyBaseProprietary"
    }
    AliyunServiceRoleForRds = {
      id             = "rds-ecs-service.rds.aliyuncs.com"
      description    = "Service Linked Role for RDS. RDS will use this role to access your resources in other services."
      description_cn = "用于云数据库 RDS（RDS）的服务关联角色，RDS使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForRds"
    }
    AliyunServiceRoleForROSStackGroupsRDAdmin = {
      id             = "stackgroups-admin.ros.aliyuncs.com"
      description    = "Service Linked Role for ROS- StackGroup Admin. ROS- StackGroup Admin will use this role to access your resources in other services."
      description_cn = "用于资源编排服务 - 资源栈组管理员（ROS- StackGroup Admin）的服务关联角色，ROS- StackGroup Admin使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForROSStackGroupsRDAdmin"
    }
    AliyunServiceRoleForROSStackGroupsRDMember = {
      id             = "stackgroups-member.ros.aliyuncs.com"
      description    = "Service Linked Role for ROS - StackGroup Member. ROS - StackGroup Member will use this role to access your resources in other services."
      description_cn = "用于资源编排服务 - 资源栈组目标成员（ROS - StackGroup Member）的服务关联角色，ROS - StackGroup Member使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForROSStackGroupsRDMember"
    }
    AliyunServiceRoleForAmqpMonitoring = {
      id             = "monitoring.amqp.aliyuncs.com"
      description    = "Service Linked Role for RabbitMQ - monitoring. RabbitMQ - monitoring will use this role to access your resources in other services."
      description_cn = "用于RabbitMQ - 监控（RabbitMQ - monitoring）的服务关联角色，RabbitMQ - monitoring使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForAmqpMonitoring"
    }
    AliyunServiceRoleForAmqpLogDelivery = {
      id             = "logdelivery.amqp.aliyuncs.com"
      description    = "Service Linked Role for RabbitMQ - LogDelivery. RabbitMQ - LogDelivery will use this role to access your resources in other services."
      description_cn = "用于RabbitMQ - 日志导出（RabbitMQ - LogDelivery）的服务关联角色，RabbitMQ - LogDelivery使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForAmqpLogDelivery"
    }
    AliyunServiceRoleForKvstore = {
      id             = "r-kvstore.aliyuncs.com"
      description    = "Service Linked Role for ApsaraDB Redis (Kvstore). ApsaraDB Redis will use this role to access your resources in other services."
      description_cn = "用于云数据库Redis版（Kvstore）的服务关联角色，云数据库Redis版使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForKvstore"
    }
    AliyunServiceRoleForResourceDirectory = {
      id             = "resourcemanager.aliyuncs.com"
      description    = "Service Linked Role for Resource Directory. Resource Directory will use this role to access your resources in other services."
      description_cn = "用于资源目录(Resource Directory)的服务关联角色，资源目录使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForResourceDirectory"
    }
    AliyunServiceRoleForResourceMetaCenter = {
      id             = "rmc.resourcemanager.aliyuncs.com"
      description    = "Service Linked Role for ResourceCenter. ResourceCenter will use this role to access your resources in other services."
      description_cn = "用于资源中心的服务关联角色，ResourceCenter使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForResourceMetaCenter"
    }
    AliyunServiceRoleForResourceGroup = {
      id             = "resourcegroup.resourcemanager.aliyuncs.com"
      description    = "Service Linked Role for ResourceGroup. ResourceGroup will use this role to access your resources in other services."
      description_cn = "用于资源组（ResourceGroup）的服务关联角色，ResourceGroup使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForResourceGroup"
    }
    AliyunServiceRoleForOns = {
      id             = "ons.aliyuncs.com"
      description    = "Service Linked Role for MessageQueue. MessageQueue will use this role to access your resources in other services."
      description_cn = "用于消息队列（MessageQueue）的服务关联角色，MessageQueue使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForOns"
    }
    AliyunServiceRoleForOnsMultisiteHA = {
      id             = "multisite-ha.ons.aliyuncs.com"
      description    = "Service Linked Role for ONS-MultisiteHA. ONS-MultisiteHA will use this role to access your resources in other services."
      description_cn = "用于消息队列-异地多活（ONS-MultisiteHA）的服务关联角色，ONS-MultisiteHA使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForOnsMultisiteHA"
    }
    AliyunServiceRoleForRMQ = {
      id             = "rmq.aliyuncs.com"
      description    = "Service Linked Role for RocketMQ. RocketMQ will use this role to access your resources in other services."
      description_cn = "用于消息队列（RocketMQ）的服务关联角色，RocketMQ使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForRMQ"
    }
    AliyunServiceRoleForCasMonitor = {
      id             = "monitor.cas.aliyuncs.com"
      description    = "Service Linked Role for Cas - Monitor. Cas - Monitor will use this role to access your resources in other services."
      description_cn = "用于数字证书管理服务 - 域名监控（Cas - Monitor）的服务关联角色，Cas - Monitor使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForCasMonitor"
    }
    AliyunServiceRoleForSAE = {
      id             = "sae.aliyuncs.com"
      description    = "Service Linked Role for Serverless App Engine. Serverless App Engine will use this role to access your resources in other services."
      description_cn = "用于Serverless 应用引擎（Serverless App Engine）的服务关联角色，Serverless App Engine使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForSAE"
    }
    AliyunServiceRoleForServiceCatalog = {
      id             = "servicecatalog.aliyuncs.com"
      description    = "Service Linked Role for Service Catalog. Service Catalog will use this role to access your resources in other services."
      description_cn = "用于服务目录（Service Catalog）的服务关联角色，Service Catalog使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForServiceCatalog"
    }
    AliyunServiceRoleForServiceMesh = {
      id             = "servicemesh.aliyuncs.com"
      description    = "Service Linked Role for ASM. ASM will use this role to access your resources in other services."
      description_cn = "用于阿里云服务网格（ASM）的服务关联角色，ASM使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForServiceMesh"
    }
    AliyunServiceRoleForTag = {
      id             = "tag.aliyuncs.com"
      description    = "Service Linked Role for Tag. Tag will use this role to access your resources in other services."
      description_cn = "用于Tag的服务关联角色，Tag使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForTag"
    }
    AliyunServiceRoleForOTSDataDelivery = {
      id             = "datadelivery.ots.aliyuncs.com"
      description    = "Service Linked Role for Tablestore - DataDelivery. Tablestore - DataDelivery will use this role to access your resources in other services."
      description_cn = "用于表格存储 - 数据投递（Tablestore - DataDelivery）的服务关联角色，Tablestore - DataDelivery使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForOTSDataDelivery"
    }
    AliyunServiceRoleForTSDB = {
      id             = "hitsdb.aliyuncs.com"
      description    = "Service Linked Role for TSDB. TSDB will use this role to access your resources in other services."
      description_cn = "用于时序时空数据库的服务关联角色，TSDB使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForTSDB"
    }
    AliyunServiceRoleForTSDBLindormEncryption = {
      id             = "encryption.hitsdb.aliyuncs.com"
      description    = "Service Linked Role for Lindorm - Encryption. Lindorm - Encryption will use this role to access your resources in other services."
      description_cn = "用于云原生多模数据库 - 加密（Lindorm - Encryption）的服务关联角色，Lindorm - Encryption使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForTSDBLindormEncryption"
    }
    AliyunServiceRoleForVpn = {
      id             = "vpn.aliyuncs.com"
      description    = "Service Linked Role for VPNGateway. VPNGateway will use this role to access your resources in other services."
      description_cn = "用于VPN网关（VPNGateway）的服务关联角色，VPNGateway使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForVpn"
    }
    AliyunServiceRoleForVPNCertificate = {
      id             = "certificate.vpn.aliyuncs.com"
      description    = "Service Linked Role for VPN - CertificateService. VPN - CertificateService will use this role to access your resources in other services."
      description_cn = "用于虚拟专用网络 - 证书服务（VPN - CertificateService）的服务关联角色，VPN - CertificateService使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForVPNCertificate"
    }
    AliyunServiceRoleForWaf = {
      id             = "waf.aliyuncs.com"
      description    = "Service Linked Role for WAF. WAF will use this role to access your resources in other services."
      description_cn = "用于Web应用防火墙（WAF）的服务关联角色，WAF使用此角色来访问您在其他云产品中的资源。"
      policy_name    = "AliyunServiceRolePolicyForWaf"
    }
  }
}