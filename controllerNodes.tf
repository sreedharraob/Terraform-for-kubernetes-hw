resource "google_compute_instance" "gcp-kubepro-controlplane-instances" {
  count          = 3
  name           = "${var.google["controllerNodeName"]}-${count.index}"
  machine_type   = "${var.google["controllerNodeSize"]}"
  zone           = "${var.google["zone"]}"
  can_ip_forward = true
  tags           = ["kubernetes-hw", "controller"]

  labels = {
    environment = "dev"
  }

  boot_disk {
    initialize_params {
      image = "${var.google["controllerNodeImage"]}"
      size  = "${var.google["controllerNodeDiskSize"]}"
    }

    device_name = "kube-controllerNode-disk-${count.index}"
  }

  network_interface {
    subnetwork    = "${google_compute_subnetwork.gcp-kubepro-subnet.name}"
    network_ip    = "10.240.0.1${count.index}"
    access_config = {}
  }

  metadata {
    purpose = "kuberenetes control plane instace"
  }

  service_account {
    scopes = ["compute-rw", "service-management", "service-control", "storage-ro", "logging-write", "monitoring"]
  }
}
