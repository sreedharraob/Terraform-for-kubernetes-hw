variable "azure" {
  type = "map"

  default = {
    subscriptionId = ""
    appId          = ""
    password       = ""
    tenant         = ""
  }
}

variable "aws" {
  type = "map"

  default = {
    region = "eu-west-2"
  }
}

variable "google" {
  type = "map"

  default = {
    project = ""
    region  = "europe-west2"
  }
}

variable "gcp_ip_cidr_range" {
  default     = "10.0.1.0/24"
  type        = "string"
  description = "gcp subnet ip range"
}

variable "gcp_subnet_names" {
  type = "map"

  default = {
    subnet1 = "devsubnet"
    subnet2 = "devtwosubnet"
    subnet3 = "devthreesubnet"
  }
}

variable "kubernetes_master_auth" {
  type = "map"

  default {
    password = ""
    username = ""
  }
}

output "aws_cidr_subnet1" {
  value = "${aws_subnet.subnet-1.cidr_block}"
}

output "aws_cidr_subnet2" {
  value = "${aws_subnet.subnet-2.cidr_block}"
}