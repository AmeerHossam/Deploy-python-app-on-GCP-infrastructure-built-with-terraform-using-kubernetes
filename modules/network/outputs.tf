output "management-subnet" {
  value = google_compute_subnetwork.management-subnetwork
}

output "restricted-subnet" {
  value = google_compute_subnetwork.restricted-subnetwork
}

output "vpc_network" {
  value = google_compute_network.vpc_network
}

output "nat_ip_address" {
  value = google_compute_address.nat-ip.address
}