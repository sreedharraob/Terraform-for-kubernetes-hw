resource "google_compute_network" "google-dev-network-example-1" {
  name                    = "kubesree-network"
  auto_create_subnetworks = false
}