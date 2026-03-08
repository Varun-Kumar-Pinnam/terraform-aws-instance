variable "ami_id" {
    type = string  
}

variable "instance_type" {
    type = string  
}

variable "sg_ids" {
    type = list(string)
  }

variable "project" {
    type = string  
}

variable "environment" {
    type = string  
}

variable "tags" {
    type = map
    default = {}
}