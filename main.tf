resource "google_storage_bucket" "tf-cicd-bucket" {
  name          = "tf-cicd-bucket"
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