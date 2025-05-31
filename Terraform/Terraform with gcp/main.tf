resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = var.vm_machine_type
  zone         = var.gcp_zone
  
  boot_disk {
    initialize_params {
      image = var.vm_image
    }
  }

  network_interface {
    network = var.vm_network
  }
}
resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  location      = var.gcp_region
  force_destroy = true
}

resource "google_storage_bucket_iam_member" "public_access" {
  bucket = google_storage_bucket.bucket.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}

resource "google_storage_bucket_object" "upload_script" {
  name   = var.script_name
  bucket = google_storage_bucket.bucket.name
  source = var.script_path
}