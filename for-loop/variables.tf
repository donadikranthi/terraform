variable "instances"{
    #default  = [ "mongodb","redis","nginx" ]
    default   =  {
        mongodb= "t3.micro"
        redis   = "t3.medium"
        nginx   = "t3.small"
    }
}

variable "zone_id" {
    default = "Z04572451B9X32T33PSC8"
}

variable "domain_name" {
     default = "kranthi.fun" 

}