resource "google_compute_instance" "app" {
  name         = "reddit-app"
  machine_type = "g1-small"
  zone         = var.zone
<<<<<<< HEAD
  tags         = ["reddit-app","http-server"]
=======
  tags         = ["reddit-app", "http-server"]
>>>>>>> master
  boot_disk {
    initialize_params { image = var.app_disk_image }
  }
  network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.app_ip.address
    }
  }
  metadata = {
    ssh-keys = "${var.user}:${file(var.public_key_path)}"
  }
}
resource "google_compute_address" "app_ip" {
  name = "reddit-app-ip"
}
