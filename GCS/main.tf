terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "3.85.0"
    }
  }
}

provider "google" {
    project = "curso-terraform-26091994"
    region = "southamerica-east1"
    zone = "southamerica-east1-a"
    credentials = "service-account-key.json"
}

resource google_storage_bucket "bucket1"{
    name = "terraform-bucket-serviceacc-mlsabino"
}
