resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.zone

  network    = var.network_id

  initial_node_count       = 1
  deletion_protection       = true

  project = var.project_id
}

