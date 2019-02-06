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