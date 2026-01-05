variable "service_role_with_service_names" {
  description = "A list of service names used to creating service roles, like 'ack', 'ecs', 'adb'. More service names see variable 'service_roles' default value."
  type        = list(string)
  default     = []
}

variable "service_role_with_role_names" {
  description = "A list of service role names used to creating service roles, like 'AliyunCSDefaultRole', 'AliyunCDNLoggingRole'. More service roles names see variable 'service_roles' default value or service_role.tf file."
  type        = list(string)
  default     = []
}
variable "service_role_with_self_roles" {
  description = "A list of self-defined service roles. Each role object should contains role name, document, description, policy type and policy name. More system service roles service_role.tf file."
  type = list(object({
    # self role name
    name = string
    # self role document
    document = string
    # self role description
    description = string
    # policy type used to attach with self role
    policy_type = string
    # policy name used to attach with self role
    policy_name = string
  }))
  default = []
}

variable "exclude_service_role_with_role_names" {
  description = "Excluding existed or some needless roles. It is valid when setting 'service_role_with_service_names'."
  type        = list(string)
  default     = []
}

variable "service_roles" {
  description = "All of pre-defined system service roles."
  type        = map(list(string))
  default = {
    ack_one = [
      "AliyunAdcpManagedMseRole",
      "AliyunAdcpServerlessKubernetesRole"
    ]
    actiontrail = ["AliyunActionTrailDefaultRole"]
    alikafka    = ["AliyunKafkaDefaultRole"]
    alidns      = ["AliyunDNSDefaultRole"]
    adb = [
      "AliyunAnalyticDBAccessingOSSRole",
      "AliyunAnalyticDBAccessingDTSRole",
      "AliyunAnalyticDBAccessingLogRole"
    ]
    ddos_bgp = ["AliyunAntiDDoSProAccessingLogRole"]
    ddos_coo = [
      "AliyunDDoSCOOLogArchiveRole",
      "AliyunDDoSCOODefaultRole"
    ]
    api_gateway = ["AliyunApiGatewayAccessingFCRole"]
    arms = [
      "AliyunARMSAccessingECSRole",
      "AliyunARMSDefaultRole",
      "AliyunARMSAccessingCSRole"
    ]
    rdc = [
      "AliyunRDCDevStudioRole",
      "AliyunRDCGitEncryptionRole",
      "AliyunDevOpsCollegeRole",
      "AliyunRDCDefaultRole",
      "AliyunRDCCodeAuditRole",
      "AliyunRDCCodeBackupRole",
      "AliyunRDCRamAutoImportRole"
    ]
    voc = [
      "AliyunVODDefaultRole",
      "AliyunVODVideoLifecycleRole"
    ]
    bastion_host = ["AliyunBastionHostDefaultRole"]
    cdn = [
      "AliyunCDNLoggingRole",
      "AliyunCDNAccessingPrivateOSSRole",
      "AliyunCDNLogArchiveRole",
      "AliyunCDNEventNotificationRole"
    ]
    slb = [
      "AliyunSLBDefaultRole",
      "AliyunSLBLogArchiveRole",
      "AliyunSLBHealthDiagnoseRole"
    ]
    click_house = ["AliyunClickhouseAccessingLogRole"]
    config      = ["AliyunConfigDefaultRole"]
    dbaudit = [
      "AliyunDbauditApsaraStackRole",
      "AliyunDbAuditDefaultRole"
    ]
    cloud_firewall = [
      "AliyunCloudFirewallDefautlRole",
      "AliyunCloudFirewallAccessingECSRole"
    ]
    cms = [
      "AliyunCloudMonitorAccessingESSRole",
      "AliyunCloudMonitorAccessingFCRole",
      "AliyunCloudMonitorDefaultRole",
      "AliyunCloudMonitorAccessingCDNRole",
      "AliyunCloudMonitorAccessingLogRole",
      "AliyunCloudMonitorAccessingCloudAssistantRole",
      "AliyunCloudMonitorSendOperationMessageToComputeNestRole",
      "AliyunCloudMonitorGenerateOpsItemForOpsCenterRole"
    ]
    clousauth = [
      "AliyunCloudauthAccessingMNSRole",
      "AliyunCloudauthAccessingOSSRole"
    ]
    ack = [
      "AliyunCSDefaultRole",
      "AliyunCISDefaultRole",
      "AliyunCSServerlessKubernetesRole",
      "AliyunCSKubernetesAuditRole",
      "AliyunCSManagedAcrRole",
      "AliyunCSManagedWebhookInjectorRole",
      "AliyunCSManagedAutoScalerRole",
      "AliyunCSManagedNlcRole",
      "AliyunCSManagedVKRole",
      "AliyunCSManagedDefaultWorkerRole",
      "AliyunCSManagedKubeAIRole",
      "AliyunCSManagedEdgeRole",
      "AliyunCSManagedKubernetesRole",
      "AliyunCSManagedLogRole",
      "AliyunCSManagedCmsRole",
      "AliyunCSManagedCsiRole",
      "AliyunCSManagedLicenseRole",
      "AliyunCSManagedSecurityRole",
      "AliyunCSManagedNetworkRole",
      "AliyunCSManagedArmsRole",
      "AliyunCSManagedBackupRestoreRole",
      "AliyunCSManagedCostRole",
      "AliyunCSManagedNimitzRole",
      "AliyunCSManagedMseRole",
      "AliyunCSManagedTraceRole",
      "AliyunCSManagedCsiProvisionerRole",
      "AliyunCSManagedCsiPluginRole"
    ]
    das  = ["AliyunHDMDefaultRole"]
    dms  = ["AliyunDMSDefaultRole"]
    drds = ["AliyunDRDSDefaultRole"]
    sddp = [
      "AliyunSDDPAccessingOSSRole",
      "AliyunSDDPDefaultRole"
    ]
    dts = ["AliyunDTSDefaultRole"]
    data_works = [
      "AliyunDataWorksAccessingOSSRole",
      "AliyunDataWorksAccessingENIRole"
    ]
    dbs         = ["AliyunDBSDefaultRole"]
    dbfs        = ["AliyunDBFSAccessingECSRole"]
    datahub     = ["AliyunDataHubDefaultRole"]
    direct_mail = ["AliyunDirectMailAccessingDNSRole"]
    emr = [
      "AliyunEMROnACKDefaultRole",
      "AliyunEMRECSDefaultRole",
      "AliyunEMRDefaultRole",
      "AliyunEMRNotebookDefaultRole",
      "AliyunEMRWorkflowDefaultRole",
      "AliyunEMRManagedCostRole"
    ]
    ecs = [
      "AliyunECSInstanceForYundunSysTrustRole",
      "AliyunECSInstanceForCSManagedRole",
      "AliyunECSEncryptDefaultRole",
      "AliyunECSImageExportDefaultRole",
      "AliyunECSImageImportDefaultRole",
      "AliyunECSAccessingHBRRole",
      "AliyunECSAutoProvisioningGroupRole",
      "AliyunECSDiskEncryptDefaultRole",
      "AliyunECSInstanceForEMRRole",
      "AliyunEcsLicenseManagerRole",
      "AliyunECSInstanceForWebPlusRole",
      "AliyunECSInstanceForEMRStudioRole",
      "AliyunMSEForECIRole",
      "AliyunECSOxmDeployRole",
      "AliyunECSInstanceForEHPCRole",
      "AliyunECSCloudBoxImageImportDefaultRole"
    ]
    edas = ["AliyunEDASDefaultRole"]
    eci  = ["AliyunECIContainerGroupRole"]
    ehpc = ["AliyunEHPCDefaultRole"]
    elasticsearch = [
      "AliyunElasticsearchAccessingRDSRole",
      "AliyunElasticsearchAccessingOOSRole",
      "AliyunElasticsearchAccessingLogRole",
      "AliyunElasticsearchAccessingOSSRole"
    ]
    event_bridge = [
      "AliyunEventBridgeAccessingMNSRole",
      "AliyunEventBridgeAccessingFCRole"
    ]
    fc = [
      "AliyunFCForDevCloudRole",
      "AliyunFCAccessVPCAndLogDefaultRole",
      "AliyunFCDefaultRole",
      "AliyunFCPutObjectRole",
      "AliyunFCLogExecutionRole",
      "AliyunFCServerlessDevsRole"
    ]
    # TODO: currently creating graph_database role does not works, skip it
    #        graph_database = ["AliyunGDSAccessingOSSRole"]
    hbase = ["AliyunHBaseDefaultRole"]
    hbr = [
      "AliyunHBRDRRole",
      "AliyunHBRDefaultRole",
      "AliyunHBRSyncVPCDeployRole"
    ]
    imm = [
      "AliyunIMMDefaultRole",
      "AliyunIMMBatchTriggerRole"
    ]
    iot = [
      "AliyunIOTAccessingLinkWANRole",
      "AliyunIOTFederatedLoginRole",
      "AliyunIOTAccessingHiTSDBRole",
      "AliyunIOTAccessingECSENIRole",
      "AliyunIoTIndustryPlatformRole",
      "AliyunIoTAppHostingRole",
      "AliyunIOTAccessingLogRole",
      "AliyunIOTAccessingFssRole",
      "AliyunIOTAccessingKafkaRole",
      "AliyunIOTAccessingRDSRole",
      "AliyunIOTAccessingFCRole",
      "AliyunIOTAccessingMNSRole",
      "AliyunIOTAccessingDataHubRole",
      "AliyunIOTAccessingMQRole",
      "AliyunIOTAccessingDysmsRole",
      "AliyunIOTAccessingOTSRole"
    ]
    sls          = ["AliyunSLSAlertMonitorRole"]
    market_place = ["AliyunMarketAccessingApiGatewayRole"]
    maxcompute   = ["AliyunMaxComputeEncryptionDefaultRole"]
    nat_gateway  = ["AliyunNATAccessingNetworkInterfaceRole"]
    nas = [
      "AliyunNASTieringRole",
      "AliyunNasEncryptDefaultRole",
      "AliyunNASDefaultRole",
      "AliyunNASLogArchiveRole",
      "AliyunNASManageENIRole"
    ]
    oss = [
      "AliyunMTSForOSSDefaultRole",
      "AliyunOSSEventNotificationRole",
      "AliyunOSSDlsDefaultRole",
      "AliyunOSSDLSTransferRole",
      "AliyunOSSImportSlsAuditRole",
      "AliyunOSSMirrorDefaultRole",
      "AliyunOSSObjectFcForOSSDefaultRole"
    ]
    ocean_base = ["AliyunOceanbaseMigrationServiceRole"]
    open_search = [
      "AliyunOpenSearchOsepRole",
      "AliyunOpenSearchDefaultRole"
    ]
    oos = [
      "AliyunOOSAccessingECS4ESRole",
      "AliyunOOSLifecycleHook4CSRole"
    ]
    private_link = ["AliyunPrivateLinkAccessingENIRole"]
    private_zone = ["AliyunPVTZDefaultRole"]
    rds = [
      "AliyunRDSNotificationRole",
      "AliyunRDSDedicatedHostGroupRole",
      "AliyunRDSInstanceEncryptionDefaultRole",
      "AliyunRDSImportRole",
      "AliyunRDSSqlExplorerRole"
    ]
    rabbitmq = [
      "AliyunAMQPAccessingCloudMonitorRole",
      "AliyunAMQPAccessingLogRole"
    ]
    rocketmq = ["AliyunMQAccessingCloudMonitorRole"]
    scdn = [
      "AliyunSCDNAccessingECSRole",
      "AliyunSCDNAccessingSLBRole"
    ]
    ssl_certificate = [
      "AliyunCASDefaultRole",
      "AliyunPCADefaultRole"
    ]
    schedulerx   = ["AliyunSchedulerxAccessingECIRole"]
    sae          = ["AliyunSAEDefaultRole"]
    service_mesh = ["AliyunServiceMeshDefaultRole"]
    smartag      = ["AliyunSmartAGAccessingPVTZRole"]
    tag          = ["AliyunTAGDefaultRole"]
    ots          = ["AliyunOTSLogArchiveRole"]
    lindorm      = ["AliyunTSDBAccessingENIRole"]
    vpc          = ["AliyunVPCLogArchiveRole"]
    vpn          = ["AliyunVpnAccessingIdaasRole"]
    waf = [
      "AliyunWAFAccessingECSRole",
      "AliyunWAFConfigENIRole",
      "AliyunWAFAccessingSLBRole",
      "AliyunWAFAssetsManageRole",
      "AliyunWAFAccessingLogRole"
    ]
  }
}

variable "service_linked_role_with_service_names" {
  description = "A list of service names used to creating service linked roles, like 'ack_one', 'alikafka', 'alb'. More service names see variable 'service_linked_roles' default value."
  type        = list(string)
  default     = []
}

variable "service_linked_role_with_role_names" {
  description = "A list of role names used to creating service linked roles, like 'AliyunServiceRoleForApiGateway', 'AliyunServiceRoleForARMS'. More linked role names see variable 'service_linked_roles' default value or service_linked_role.tf file."
  type        = list(string)
  default     = []
}

variable "service_linked_role_with_service_ids" {
  description = "A list of service ids names used to creating service linked roles, like 'actiontrail.aliyuncs.com', 'alidns.aliyuncs.com'. More service ids see service_linked_role.tf file or refer to https://www.alibabacloud.com/help/en/ram/product-overview/services-that-work-with-service-linked-roles."
  type        = list(string)
  default     = []
}

variable "exclude_service_linked_role_with_role_names" {
  description = "Excluding existed or some needless linked roles. It is valid when setting 'service_linked_role_with_service_names'."
  type        = list(string)
  default     = []
}

variable "service_linked_roles" {
  description = "All of pre-defined system service linked roles."
  type        = map(list(string))
  default = {
    ack_one     = ["AliyunServiceRoleForAdcp"]
    actiontrail = ["AliyunServiceRoleForActionTrail"]
    alikafka = [
      "AliyunServiceRoleForAlikafkaConnector",
      "AliyunServiceRoleForAlikafkaInstanceEncryption",
      "AliyunServiceRoleForAlikafka",
      "AliyunServiceRoleForAlikafkaETL"
    ]
    alidns   = ["AliyunServiceRoleForDNS"]
    adb      = ["AliyunServiceRoleForAnalyticDBForMySQL"]
    gpdb     = ["AliyunServiceRoleForADBPG"]
    ddos_bgp = ["AliyunServiceRoleForDDoSBgp"]
    api_gateway = [
      "AliyunServiceRoleForApiGateway",
      "AliyunServiceRoleForApiGatewayMonitoring",
      "AliyunServiceRoleForApiGatewayConnectUserVpc",
      "AliyunServiceRoleForApigatewayPutEventsToEventBridge",
      "AliyunServiceRoleForApiGatewayIntegrateWithMicroservices"
    ]
    alb = [
      "AliyunServiceRoleForAlb",
      "AliyunServiceRoleForAlbLogDelivery",
      "AliyunServiceRoleForALbClone",
      "AliyunServiceRoleForAlbGa"
    ]
    arms = [
      "AliyunServiceRoleForARMS",
      "AliyunServiceRoleForARMSSecurity"
    ]
    imp          = ["AliyunServiceRolePolicyForImp"]
    auto_scaling = ["AliyunServiceRoleForAutoScaling"]
    bastion_host = ["AliyunServiceRoleForBastionhost"]
    bss_open_api = ["AliyunServiceRoleForBssOpenApi"]
    cdn = [
      "AliyunServiceRoleForCDNAccessingDDoS",
      "AliyunServiceRoleForCDNAccessingWAF",
      "AliyunServiceRoleForCDNLogDelivery"
    ]
    chatbot = [
      "AliyunServiceRoleForBeeBotResourcePacket",
      "AliyunServiceRoleForBeeBotSMS"
    ]
    slb = [
      "AliyunServiceRoleForSlbLogDelivery",
      "AliyunServiceRoleForSlbEipAccess"
    ]
    click_house = ["AliyunServiceRoleForClickHouse"]
    config = [
      "AliyunServiceRoleForConfig",
      "AliyunServiceRoleForConfigRemediation"
    ]
    dbaudit = [
      "AliyunServiceRoleForDbaudit",
      "AliyunServiceRoleForDbauditAssertManager"
    ]
    cen       = ["AliyunServiceRoleForCEN"]
    cms       = ["AliyunServiceRoleForCloudMonitor"]
    clous_sso = ["AliyunServiceRoleForCloudSSO"]
    compute_nest = [
      "AliyunServiceRoleForComputeNestSupplier",
      "AliyunServiceRoleForComputeNestUser",
      "AliyunServiceRoleForComputeNestDingTalk"
    ]
    container_registry = [
      "AliyunServiceRoleForContainerRegistryConnectCustomerVPC",
      "AliyunServiceRoleForContainerRegistryAccessCustomerPrivateZone",
      "AliyunServiceRoleForContainerRegistryAccessCS"
    ]
    das = ["AliyunServiceRoleForDAS"]
    dcdn = [
      "AliyunServiceRoleForDCDNLogDelivery",
      "AliyunServiceRoleForDCDNMultiAccount",
      "AliyunServiceRoleForDCDNRealTimeLogDelivery"
    ]
    dms  = ["AliyunServiceRoleForDMS"]
    sddp = ["AliyunServiceRoleForSDDP"]
    data_works = [
      "AliyunServiceRoleForDataworksDataMap",
      "AliyunServiceRoleForDataWorksOpenPlatform",
      "AliyunServiceRoleForDataworksOnEmr",
      "AliyunServiceRoleForDataworksEngine",
      "AliyunServiceRoleForDataWorksAccessDLF",
      "AliyunServiceRoleForDataWorksDI",
      "AliyunServiceRoleForDataWorks"
    ]
    dbs  = ["AliyunServiceRoleForDBS"]
    dbfs = ["AliyunServiceRoleForDbfs"]
    datahub = [
      "AliyunServiceRoleForDataHub",
      "AliyunServiceRoleForDataHubDWConnection"
    ]
    emr = ["AliyunServiceRoleForEMRStarRocks"]
    ebs = ["AliyunServiceRoleForEBS"]
    ecs = [
      "AliyunServiceRoleForECSArchiving",
      "AliyunServiceRoleForECSAutoProvisioning",
      "AliyunServiceRoleForECSSelfService",
      "AliyunServiceRoleForECSImageBuilder",
      "AliyunServiceRoleForECSNetworkInsights",
      "AliyunServiceRoleForECSWorkbench",
      "AliyunServiceRoleForECSResourceClean"
    ]
    ens = [
      "AliyunServiceRoleForENS",
      "AliyunServiceRoleForENSNetworkResourceManager",
      "AliyunServiceRoleForENSResourceManager",
      "AliyunServiceRoleForEnsDiskEncrypt"
    ]
    eflo = [
      "AliyunServiceRoleForEfloVcc",
      "AliyunServiceRoleForEfloCnp"
    ]
    eais = ["AliyunServiceRoleForEais"]
    eci = [
      "AliyunServiceRoleForECI",
      "AliyunServiceRoleForECIVnode"
    ]
    ehpc = [
      "AliyunServiceRoleForEHPC",
      "AliyunServiceRoleForEHPCManagedNetwork"
    ]
    elasticsearch = [
      "AliyunServiceRoleForElasticsearchOps",
      "AliyunServiceRoleForElasticsearchCollector",
      "AliyunServiceRoleForElasticsearch"
    ]
    event_bridge = [
      "AliyunServiceRoleForEventBridgeSendToFC",
      "AliyunServiceRoleForEventBridgeSendToMNS",
      "AliyunServiceRoleForEventBridgeSendToSMS",
      "AliyunServiceRoleForEventBridgeSendToDirectMail",
      "AliyunServiceRoleForEventBridgeSourceRocketMQ",
      "AliyunServiceRoleForEventBridgeConnectVPC",
      "AliyunServiceRoleForEventBridgeSourceActionTrail",
      "AliyunServiceRoleForEventBridgeSourceRabbitMQ",
      "AliyunServiceRoleForEventBridgeSendToRabbitMQ",
      "AliyunServiceRoleForEventBridgeSendToRocketMQ",
      "AliyunServiceRoleForEventBridgeSourceMqtt",
      "AliyunServiceRoleForEventBridgeSendToSAE",
      "AliyunServiceRoleForEventBridgeSendToRDS",
      "AliyunServiceRoleForEventBridgeSourceKafka",
      "AliyunServiceRoleForEventBridgeSendToKafka",
      "AliyunServiceRoleForEventBridgeSourceCMS",
    ]
    fc = ["AliyunServiceRoleForFC"]
    ga = [
      "AliyunServiceRoleForGaVpcEndpoint",
      "AliyunServiceRoleForGaCdt",
      "AliyunServiceRoleForGaSsl",
      "AliyunServiceRoleForGaAntiDdos",
      "AliyunServiceRoleForGaFlowlog",
      "AliyunServiceRoleForGaOss",
      "AliyunServiceRoleForGaAlb",
      "AliyunServiceRoleForGaNlb"
    ]
    hbase = ["AliyunServiceRoleForHBaseEncryption"]
    hologres = [
      "AliyunServiceRoleForHologresUserMgmt",
      "AliyunServiceRoleForHologresIdentityMgmt"
    ]
    hbr = [
      "AliyunServiceRoleForHbrDr",
      "AliyunServiceRoleForHbrEcsBackup",
      "AliyunServiceRoleForHbrOssBackup",
      "AliyunServiceRoleForHbrNasBackup",
      "AliyunServiceRoleForHbrCsgBackup",
      "AliyunServiceRoleForHbrVaultEncryption",
      "AliyunServiceRoleForHbrOtsBackup",
      "AliyunServiceRoleForHbrEcsEncryption",
      "AliyunServiceRoleForHbrCrossAccountBackup"
    ]
    iot = [
      "AliyunServiceRoleForIoTDeviceFileUpload",
      "AliyunServiceRoleForIoTLogExport",
      "AliyunServiceRoleForIoTRuleengineLindorm",
      "AliyunServiceRoleForIOTInstanceNetwork",
      "AliyunServiceRoleForIoTCloudSource",
      "AliyunServiceRoleForGatewayCertConfig",
      "AliyunServiceRoleForIoTRuleenginePolarDB"
    ]
    kms = [
      "AliyunServiceRoleForKMSSecretsManagerForRDS",
      "AliyunServiceRoleForKMSKeyStore",
      "AliyunServiceRoleForKMSSecretsManagerForECS"
    ]
    lindorm = [
      "AliyunServiceRoleForTSDB",
      "AliyunServiceRoleForTSDBLindormEncryption"
    ]
    sls = [
      "AliyunServiceRoleForSLSAlert",
      "AliyunServiceRoleForSLSAudit",
      "AliyunServiceRoleForSLSMiddlewareLens",
      "AliyunServiceRoleForSLSSecurityLens",
      "AliyunServiceRoleForSLSAILens",
      "AliyunServiceRoleForSLSStorageLens",
      "AliyunServiceRoleForSLSFullObserverbility"
    ]
    maxcompute  = ["AliyunServiceRoleForMaxComputeIdentityMgmt"]
    mse         = ["AliyunServiceRoleForMSE"]
    mongodb     = ["AliyunServiceRoleForMongoDB"]
    nat_gateway = ["AliyunServiceRoleForNatgw"]
    nas = [
      "AliyunServiceRoleForNasExtreme",
      "AliyunServiceRoleForNasEncryption",
      "AliyunServiceRoleForNasEcsHandler",
      "AliyunServiceRoleForNasLogDelivery",
      "AliyunServiceRoleForNasBackup",
      "AliyunServiceRoleForNasOssDataFlow",
      "AliyunServiceRoleForNasEventNotification"
    ]
    nlb = [
      "AliyunServiceRoleForNlb",
      "AliyunServiceRoleForNLBLogDelivery"
    ]
    ocean_base = [
      "AliyunServiceRoleForOceanBaseEncryption",
      "AliyunServiceRoleForOceanBaseTenantInstance",
      "AliyunServiceRoleForOceanBaseSecurityGroup",
      "AliyunServiceRoleForOceanbaseMigrationAssessment"
    ]
    open_search = [
      "AliyunServiceRoleForOpenSearch",
      "AliyunServiceRoleForSearchEngine"
    ]
    oos = [
      "AliyunServiceRoleForOOSBandwidthScheduler",
      "AliyunServiceRoleForOOSInstanceScheduler",
      "AliyunServiceRoleForOOSExecutionDelivery",
      "AliyunServiceRoleForOOSAppliactionManager",
      "AliyunServiceRoleForOOSSystemEventOperator"
    ]
    polardb      = ["AliyunServiceRoleForPolarDB"]
    private_link = ["AliyunServiceRoleForPrivatelink"]
    private_zone = ["AliyunServiceRoleForPvtz"]
    quick_bi     = ["AliyunServiceRoleForQuickBI"]
    rds = [
      "AliyunServiceRoleForRdsPgsqlOnEcs",
      "AliyunServiceRoleForRdsBackupEncryption",
      "AliyunServiceRoleForRDSGAD",
      "AliyunServiceRoleForRDSProxyOnEcs",
      "AliyunServiceRoleForRdsMyBaseProprietary",
      "AliyunServiceRoleForRds"
    ]
    ros = [
      "AliyunServiceRoleForROSStackGroupsRDAdmin",
      "AliyunServiceRoleForROSStackGroupsRDMember"
    ]
    rabbitmq = [
      "AliyunServiceRoleForAmqpMonitoring",
      "AliyunServiceRoleForAmqpLogDelivery"
    ]
    redis = ["AliyunServiceRoleForKvstore"]
    resource_manager = [
      "AliyunServiceRoleForResourceDirectory",
      "AliyunServiceRoleForResourceMetaCenter",
      "AliyunServiceRoleForResourceGroup"
    ]
    rocketmq = [
      "AliyunServiceRoleForOns",
      "AliyunServiceRoleForOnsMultisiteHA",
      "AliyunServiceRoleForRMQ"
    ]
    ssl_certificate = ["AliyunServiceRoleForCasMonitor"]
    sae             = ["AliyunServiceRoleForSAE"]
    service_catelog = ["AliyunServiceRoleForServiceCatalog"]
    service_mesh    = ["AliyunServiceRoleForServiceMesh"]
    tag             = ["AliyunServiceRoleForTag"]
    ots             = ["AliyunServiceRoleForOTSDataDelivery"]
    vpn = [
      "AliyunServiceRoleForVpn",
      "AliyunServiceRoleForVPNCertificate"
    ]
    waf = ["AliyunServiceRoleForWaf"]
  }
}

variable "roles" {
  description = "(Deprecated) The ram roles. It has been deprecated and using 'service_role_with_self_roles' instead."
  type = list(object({
    role_name        = string
    role_document    = string
    role_description = string
    policy_name      = string
  }))
  default = []
}


variable "services" {
  description = "(Deprecated) The service linked role service. It has been deprecated and using 'service_linked_role_with_service_ids' instead."
  type        = list(string)
  default     = []
}
