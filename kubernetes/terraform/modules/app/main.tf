resource "yandex_compute_instance" "app" {
  count       = var.count_of_instance_app
  name        = "reddit-cub-${count.index}"
  platform_id = "standard-v2"
  labels = {
    tags = "reddit-app"
  }
  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }
  resources {
    cores         = 4
    memory        = 4
  }

  boot_disk {
    initialize_params {
      # Указать id образа созданного в предыдущем домашем задании
      image_id = var.app_disk_image
      size = 40
      
    }
  }

  network_interface {
    # Указан id подсети default-ru-central1-a
    subnet_id = var.subnet_id
    nat       = true
  }
}
