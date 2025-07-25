resource "google_storage_bucket" "my-bucket" {
  name          = "tf-bucket"
  location      = "US"
  force_destroy = true
  project       = "singular-style-462604-p1"
  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}