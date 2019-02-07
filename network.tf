resource "google_compute_network" "gcp-kubepro-network" {
  name                    = "${var.google["vpcNetworkName"]}"
  auto_create_subnetworks = false
}
