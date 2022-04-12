module "roboshop" {
  source    = "../module"
  COMPONENT = "rabbitmq"
  PORT      = 5672
  MONITOR   = "no"
}