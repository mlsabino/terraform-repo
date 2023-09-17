resource "google_storage_bucket" "bucket" {
  name = "bucket-via-terraform"
  storage_class = "STANDARD"
  location = "SOUTHAMERICA-EAST1"
  uniform_bucket_level_access = true

  
  labels = {
    "env" = "qa"
    "dep" = "it"
  }
}

resource "google_storage_bucket_object" "fotos" {
  name = "cats"
  bucket = google_storage_bucket.bucket.name
  source = "/Users/matheus.sabino/Desktop/cats.png"
  
}