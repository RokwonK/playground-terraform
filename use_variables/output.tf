output "my_terraform_image_id" {
  value = var.image_id
}

output "my_terraform_amd_id" {
  value = var.ami_id_maps.ap-northeast-2.amazon_linux2
}
