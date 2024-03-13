variable "oos_services" {
  type = list(string)
  default = [
    "bandwidthscheduler.oos.aliyuncs.com",
    "instancescheduler.oos.aliyuncs.com",
  ]
}