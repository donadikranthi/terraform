variable "instances" {
    #default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
    default = {
        mongodb = "t3.micro"
        redis = "t3.micro"  
        mysql = "t3.micro"
        }
}

variable "zone_id" {
    default = "Z04572451B9X32T33PSC8"
}

variable "domain_name" {
    default = "kranthi.fun"
}