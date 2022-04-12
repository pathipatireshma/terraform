module "roboshop" {
  source    = "../module"
  COMPONENT = "payment"
  PORT      = 8080
  MONITOR   = "yes"
}