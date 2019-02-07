resource "google_compute_subnetwork" "gcp-kubepro-subnet" {
  ip_cidr_range = "${var.gcp-kubepro-subnet1["ip_cidr_range"]}"
  name          = "${var.gcp-kubepro-subnet1["name"]}"
  network       = "${google_compute_network.gcp-kubepro-network.self_link}"
  region        = "${var.google["region"]}"
}
