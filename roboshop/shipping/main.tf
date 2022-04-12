module "roboshop" {
  source    = "../module"
  COMPONENT = "shipping"
  PORT      = 8080
  MONITOR   = "yes"
}