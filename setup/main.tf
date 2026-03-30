module "network" {
    source = "./modules/network"
    project_id = var.project_id
    region = var.region
    network_name = var.network_name
}

module "gke_cluster" {
    source = "./modules/gke"
    cluster_name = var.cluster_name
    project_id = var.project_id
    zone = "${var.region}-a"
    network_id   = module.network.network_self_link
}

module "repository" {
    source = "./modules/repository"
    project_id = var.project_id
    region = var.region
    repository_name = var.repository_name
}