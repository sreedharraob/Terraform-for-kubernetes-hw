resource "google_compute_instance" "gcp-kubepro-controlplane-instances" {
  count          = 3
  name           = "${var.google["controlPlaneInstanceName"]}-${count.index}"
  machine_type   = "${var.google["controllerInstanceSize"]}"
  zone           = "${var.google["zone"]}"
  can_ip_forward = true
  tags           = ["kubernetes-hw", "controller"]

  labels = {
    environment = "dev"
  }

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
      size  = "200"
    }

    device_name = "kube-controlplane-disk-${count.index}"
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
