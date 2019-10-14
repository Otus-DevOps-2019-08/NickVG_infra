provider "google" {
  version = "~> 2.15"
  project = var.project
  region  = var.region
}

module "app" {
  user            = var.user
  source          = "./modules/app"
  public_key_path = var.public_key_path
  zone            = var.zone
  app_disk_image  = var.app_disk_image
}

module "db" {
  user            = var.user
  source          = "./modules/db"
  public_key_path = var.public_key_path
  zone            = var.zone
  db_disk_image   = var.db_disk_image
}
module "vpc" {
  user   = var.user
  source = "./modules/vpc"
  #public_key_path = var.public_key_path
  #  zone            = var.zone
  #  db_disk_image   = var.db_disk_image
}
