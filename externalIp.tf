resource "google_compute_global_address" "gcp-kubepro-external-ip-address" {
  name = "${var.google["extIpAddressName"]}"
}
