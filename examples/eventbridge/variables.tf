variable "eventbridge_services" {
  description = "The services of eventbridge"
  type        = list(string)
  default = [
    "sendevent-fc.eventbridge.aliyuncs.com",
    "sendevent-mns.eventbridge.aliyuncs.com",
    "sendevent-sms.eventbridge.aliyuncs.com",
    "source-rocketmq.eventbridge.aliyuncs.com",
    "source-actiontrail.eventbridge.aliyuncs.com",
    "source-rabbitmq.eventbridge.aliyuncs.com",
  ]
}