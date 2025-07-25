resource "google_storage_bucket" "tf-cicd" {
  name          = "trf-bucket"
  location      = "US"
  force_destroy = true
  project       = "singular-style-462604-p1"

}