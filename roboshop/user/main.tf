module "roboshop" {
  source    = "../module"
  COMPONENT = "user"
  PORT      = 8080
  MONITOR   = "yes"
}