# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "devops-project-101"
  region  = "us-central1"
}

# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "suheyla-bucket-stage"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

