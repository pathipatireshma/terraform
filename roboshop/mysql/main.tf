module "roboshop" {
  source    = "../module"
  COMPONENT = "mysql"
  PORT      = 3306
  MONITOR   = "no"
}