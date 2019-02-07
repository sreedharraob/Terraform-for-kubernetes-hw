provider "google" {
  credentials = "${file("../kubesreegcloudaccount.json")}"
  project     = "${var.google["project"]}"
  region      = "${var.google["region"]}"
  zone        = "${var.google["zone"]}"
}
