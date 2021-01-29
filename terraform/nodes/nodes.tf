resource "google_compute_instance" "node" {
  name         = "node ${count.index + 1}"
  machine_type = "e2-medium"
  zone         = "us-central1-a"
  count        = 3



  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

}