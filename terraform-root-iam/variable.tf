variable "region" {
  default = "us-west-2"
}

variable "availability_zones" {
  type = "list"
  default = [
    "us-west-2a",
    "us-west-2b",
    "us-west-2c",
  ]
}

variable "availability_zone_a" {
  default = "us-west-2a"
}

variable "availability_zone_b" {
  default = "us-west-2b"
}

variable "availability_zone_c" {
  default = "us-west-2c"
}
