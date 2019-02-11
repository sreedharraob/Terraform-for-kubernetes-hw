resource "google_compute_instance" "gcp-kubepro-worker-instances" {
  count          = 3
  name           = "${var.google["workerNodeName"]}-${count.index}"
  machine_type   = "${var.google["workerNodeSize"]}"
  zone           = "${var.google["zone"]}"
  can_ip_forward = true
  tags           = ["kubernetes-hw", "worker"]

  labels = {
    environment = "dev"
  }

  boot_disk {
    initialize_params {
      image = "${var.google["workerNodeImage"]}"
      size  = "${var.google["workerNodeDiskSize"]}"
    }

    device_name = "kube-workerNode-disk-${count.index}"
  }

  network_interface {
    subnetwork    = "${google_compute_subnetwork.gcp-kubepro-subnet.name}"
    network_ip    = "10.240.0.2${count.index}"
    access_config = {}
  }

  metadata {
    purpose  = "kuberenetes worker node instace"
    pod-cidr = "10.200.${count.index}.0/24"
  }

  service_account {
    scopes = ["compute-rw", "service-management", "service-control", "storage-ro", "logging-write", "monitoring"]
  }
}
