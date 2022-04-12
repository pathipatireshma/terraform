module "roboshop" {
  source = "../module"
  COMPONENT = "cart"
  PORT = 8080
  MONITER = "yes"
}