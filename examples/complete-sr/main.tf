module "all" {
  source = "../../"
  # creating all of slr
  # TODO: currenly, the graph_database role does not work and skip testing
  service_role_with_service_names = [
    #        "ack_one",
    "actiontrail",
    "alikafka",
    "alidns",
    "adb",
    "ddos_bgp",
    "ddos_coo",
    "api_gateway",
    #    "arms",
    "rdc",
    "voc",
    "bastion_host",
    "cdn",
    "slb",
    "click_house",
    "config",
    "dbaudit",
    "cloud_firewall",
    "cms",
    "clousauth",
    "ack",
    "das",
    "dms",
    "drds",
    "sddp",
    "dts",
    "data_works",
    "dbs",
    "dbfs",
    "datahub",
    "direct_mail",
    "emr",
    "ecs",
    "edas",
    "eci",
    "ehpc",
    "elasticsearch",
    "event_bridge",
    "fc",
    "graph_database",
    "hbase",
    "hbr",
    "imm",
    "iot",
    "sls",
    "market_place",
    "maxcompute",
    "nat_gateway",
    "nas",
    "oss",
    "ocean_base",
    "open_search",
    "oos",
    "private_link",
    "private_zone",
    "rds",
    "rabbitmq",
    "rocketmq",
    "scdn",
    "ssl_certificate",
    "schedulerx",
    "sae",
    "service_mesh",
    "smartag",
    "tag",
    "ots",
    "lindorm",
    "vpc",
    "vpn",
    "waf"
  ]
  exclude_service_role_with_role_names = ["AliyunGDSAccessingOSSRole"]
  # ack_one's role using role name to test
  service_role_with_role_names = [
    "AliyunAdcpManagedMseRole",
    "AliyunAdcpServerlessKubernetesRole"
  ]
  # arms's role using role name to test
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
    },
    {
      name        = "AliyunARMSAccessingCSRole"
      description = "The ARMS will use this role to access your resources in other services."
      policy_name = "AliyunARMSAccessingCSRolePolicy"
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