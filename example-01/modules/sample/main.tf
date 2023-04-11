resource "google_compute_instance" "default" {
  name         = "${var.google_compute_instance_name}-${var.environtment}"
  machine_type = var.google_compute_instance_machine_type
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
  }
}



