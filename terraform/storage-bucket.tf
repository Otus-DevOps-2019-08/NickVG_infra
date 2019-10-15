provider "google" {
  version = "~> 2.15"
  project = var.project
  region  = var.region
}

module "storage-bucket" {
  source  = "SweetOps/storage-bucket/google"
  version = "0.3.0"

  # имя бакета
  name     = "storage-bucket-nvgorbunov-${var.project}"
  location = var.region
}

output storage-bucket_url {
  value = module.storage-bucket.url
}
