provider "aws" {
  region = "${var.aws["region"]}"
}

provider "google" {
  credentials = "${file("../gcloudaccount.json")}"
  project     = "${var.google["project"]}"
  region      = "${var.google["region"]}"
}

provider "azurerm" {
  subscription_id = "${var.azure["subscriptionId"]}"
  client_id       = "${var.azure["appId"]}"
  client_secret   = "${var.azure["password"]}"
  tenant_id       = "${var.azure["tenant"]}"
}