variable "google" {
  type = "map"

  default = {
    project             = ""
    region              = "europe-west2"
    zone                = "europe-west2-a"
    vpcNetworkName      = "ks-network"
    extIpAddressName    = "ks-ext-ip-address"
    controllerNodeSize  = "n1-standard-1"
    controllerNodeName  = "ks-controller"
    controllerNodeImage = "ubuntu-os-cloud/ubuntu-1804-lts"
    controllerNodeDiskSize = "200"
    workerNodeName      = "ks-worker"
    workerNodeSize      = "n1-standard-1"
    workerNodeImage     = "ubuntu-os-cloud/ubuntu-1804-lts"
    workerNodeDiskSize = "200"
  }
}

variable "gcp-kubepro-subnet1" {
  type = "map"

  default = {
    name          = "ks-subnet-1"
    ip_cidr_range = "10.240.0.0/24"
  }
}

output "gcp-kubepro-network-name" {
  value = "${google_compute_network.gcp-kubepro-network.name}"
}

output "gcp-kubepro-subnet-cidr-block" {
  value = "${google_compute_subnetwork.gcp-kubepro-subnet.ip_cidr_range}"
}
