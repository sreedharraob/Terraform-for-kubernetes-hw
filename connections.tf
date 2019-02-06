provider "google" {
  credentials = "${file("../gcloudaccount.json")}"
  project     = "${var.google["project"]}"
  region      = "${var.google["region"]}"
}