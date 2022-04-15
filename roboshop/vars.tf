variable "COMP" {
  default = [
    {
      name    = "frontend"
      port    = 80
      monitor = "yes"
    },
    {
      name    = "catalogue"
      port    = 8080
      monitor = "yes"
    },
    {
      name    = "cart"
      port    = 8080
      monitor = "yes"
    },
    {
      name    = "user"
      port    = 8080
      monitor = "yes"
    },
    {
      name    = "shipping"
      port    = 8080
      monitor = "yes"
    },
    {
      name    = "payment"
      port    = 8080
      monitor = "yes"
    },
    {
      name    = "mongodb"
      port    = 27017
      monitor = "no"
    },
    {
      name    = "redis"
      port    = 6379
      monitor = "no"
    },
    {
      name    = "rabbitmq"
      port    = 5672
      monitor = "no"
    },
    {
      name    = "mysql"
      port    = 3306
      monitor = "no"
    }
  ]
}
