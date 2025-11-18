variable "project_id" {}
variable "username" {}

provider "google" {
  project = var.project_id   
  region  = "us-central1"        
}

resource "google_compute_instance" "small_vm" {
  name         = "small-20251109-182857"   
  machine_type = "e2-micro"                 
  zone         = "us-central1-a"            

  # Boot disk configuration
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12-bookworm"  
      size  = 10                                 
    }
    auto_delete = true
  }

  # Network configuration
  network_interface {
    network = "default"
    access_config {}   # Gives an external IP
  }

  # Metadata for SSH keys
  metadata = {
    ssh-keys = "${var.username}:${file("~/.ssh/id_rsa.pub")}"
   
  }

  tags = ["http-server", "https-server"]  

  # Optional: preemptible VM
  scheduling {
    preemptible       = true
    automatic_restart = false
    on_host_maintenance = "TERMINATE"
  }

  # Shielded VM settings
  shielded_instance_config {
    enable_secure_boot           = false
    enable_vtpm                  = true
    enable_integrity_monitoring  = true
  }
}
