resource "google_compute_network" "vpc_network" {
  name                    = var.network_name
  auto_create_subnetworks = true
  project                 = var.project_id
}

resource "google_compute_firewall" "vpc_network-allow-http-ssh-rdp-icmp" {
  name    = "vpcnetwork-allow-http-ssh-rdp-icmp"
  network = google_compute_network.vpc_network.self_link

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "3389"]
  }
  allow {
    protocol = "icmp"
  }
  source_ranges = ["0.0.0.0/0"]
}