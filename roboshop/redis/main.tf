module "roboshop" {
  source    = "../module"
  COMPONENT = "redis"
  PORT      = 6379
  MONITOR   = "no"
}