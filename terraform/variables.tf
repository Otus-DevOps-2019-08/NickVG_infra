variable project {
  description = "Project ID"
}
variable region {
  description = "Region"
  # Значение по умолчанию
  default = "europe-west1"
}
variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable disk_image {
  # Описание переменной
  description = "Disk image"
}
variable user {
  # Описание переменной
  description = "default user nick"
}
variable zone_name {
  description = "Zone"
  # Описание переменной
  default = "europe-west1-b"
}
variable zone {
  description = "Zone"
  # Описание переменной
  default = "europe-west1-b"
}
variable private_key {
  # Описание переменной
  description = "path to procate key"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable db_disk_image {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
