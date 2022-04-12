module "roboshop" {
  count     = length(var.COMP)
  source    = "./module"
  COMPONENT = var.COMP[count.index]
}