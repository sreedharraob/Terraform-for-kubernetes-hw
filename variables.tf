variable "google" {
  type = "map"

  default = {
    project                  = ""
    region                   = "europe-west2"
    zone                     = "europe-west2-a"
    vpcNetworkName           = "ks-network"
    extIpAddressName         = "ks-ext-ip-address"
    controllerInstanceSize   = "n1-standard-1"
    controlPlaneInstanceName = "ks-controller"
    workerInstanceName       = "ks-worker"
    workerInstanceSize       = "n1-standard-1"
  }
}

variable "gcp-kubepro-subnet1" {
  type = "map"

  default = {
    name          = "ks-subnet1"
    ip_cidr_range = "10.240.0.0/24"
  }
}

output "gcp-kubepro-network-name" {
  value = "${google_compute_network.gcp-kubepro-network.name}"
}

output "gcp-kubepro-subnet-cidr-block" {
  value = "${google_compute_subnetwork.gcp-kubepro-subnet.ip_cidr_range}"
}
