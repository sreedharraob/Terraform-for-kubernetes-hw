variable "google" {
  type = "map"

  default = {
    project          = ""
    region           = "europe-west2"
    zone             = "europe-west2-a"
    vpcNetworkName   = "ksp-network"
    extIpAddressName = "ks-ext-ip-address"
  }
}

variable "gcp-kubepro-subnet1" {
  type = "map"

  default = {
    name          = "ks-subnet1"
    ip_cidr_range = "10.240.0.0/24"
  }
}
