module "roboshop" {
  source    = "../module"
  COMPONENT = "mongodb"
  PORT      = 27017
  MONITOR   = "no"
}