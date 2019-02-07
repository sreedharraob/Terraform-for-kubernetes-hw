resource "google_compute_firewall" "gcp-kubepro-firewall-internal-allow" {
  name    = "ks-firewall-internal-allow"
  network = "${google_compute_network.gcp-kubepro-network.name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
  }

  allow {
    protocol = "udp"
  }

  source_ranges = ["10.240.0.0/24", "10.200.0.0/16"]
}

resource "google_compute_firewall" "gcp-kubepro-firewall-external-allow" {
  name    = "ks-firewall-external-allow"
  network = "${google_compute_network.gcp-kubepro-network.name}"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22", "6443"]
  }

  source_ranges = ["0.0.0.0/0"]
}
