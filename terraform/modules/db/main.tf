resource "google_compute_instance" "db" {
  name         = "reddit-db"
  machine_type = "g1-small"
  zone         = var.zone
  tags         = ["reddit-db"]
  boot_disk {
    initialize_params {
      image = var.db_disk_image
    }
  }
  network_interface {
    network = "default"
    #access_config = {}
    #      access_config = { nat_ip = google_compute_address.app_ip.addres }
    #}
    #  network_interface {
    #    network = "default"
    access_config {
      #      nat_ip = google_compute_address.db_ip.address
    }
  }
  metadata = {
    ssh-keys = "${var.user}:${file(var.public_key_path)}"
  }
}
#resource "google_compute_address" "db_ip" {
#  name = "reddit-db-ip"
#}
