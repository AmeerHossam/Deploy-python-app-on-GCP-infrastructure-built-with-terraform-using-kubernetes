provider "google" {
  project     = "gcp-project-356819"
  region      = "us-central1"
  zone        = "us-central1-a"
  credentials = "${file("/home/amir/GCP-Terraform-Docker-K8S/.terraform/plugins/linux_amd64/key.json")}"
}

provider "google-beta" {
  project     = "gcp-project-356819"
  credentials = "${file("/home/amir/GCP-Terraform-Docker-K8S/.terraform/plugins/linux_amd64/key.json")}"
  zone        = "us-central1-a"
  region      = "us-central1"
}