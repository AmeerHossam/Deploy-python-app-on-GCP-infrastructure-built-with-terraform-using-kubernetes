resource "google_compute_router" "cloud-router" {
  name    = "my-router"
  network = google_compute_network.vpc_network.id
  region =  var.region
  bgp {
    asn               = 64514
    advertise_mode    = "CUSTOM"
    advertised_groups = ["ALL_SUBNETS"]
    advertised_ip_ranges {
      range = google_compute_subnetwork.management-subnetwork.ip_cidr_range
    }
  }
}