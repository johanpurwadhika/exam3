variable "INSTANCE_COUNT" {
  description = "Jumlah instance yang akan dideploy"
  type = number
  default = 1
}

variable "AMI" {
  description = "AMI ID"
  type = string
}

variable "INSTANCE_TYPE" {
  description = "Tipe instance"
  type = string
}

variable "SECURITY_GROUPS" {
  description = "list of security group"
  type = list
}

variable "KEYNAME" {
  description = "key name"
  type = string
}

variable "USERDATA" {
  description = "user data untuk install apps"
  type = string
}

variable "TAGNAME" {
  description = "tagname"
  type = string
}