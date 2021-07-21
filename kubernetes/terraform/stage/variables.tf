variable cloud_id {
  description = "Cloud"
}
variable folder_id {
  description = "Folder"
}
variable zone {
  description = "Zone"
  default     = "ru-central1-a"
}
variable public_key_path {
  default = "~/.ssh/appuser.pub"
}
variable image_id {
  description = "Disk image"
}
variable subnet_id {
  description = "Subnet"
}
variable service_account_key_file {
  description = "key .json"
}
variable private_key {
  description = "private_key"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "fd8um61f5eu53jt7gshv"
}
variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "fd8um61f5eu53jt7gshv"
}
