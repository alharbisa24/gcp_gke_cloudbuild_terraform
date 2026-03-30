
resource "google_artifact_registry_repository" "my_repo" {
  location      = var.region
  repository_id = var.repository_name
  format        = "DOCKER"
}