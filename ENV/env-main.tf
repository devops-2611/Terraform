variable "varenvrg" {}
variable "varenvsa" {}
variable "varenvvn" {}
variable "varenvsn" {}

module "rgmodule" {
  source = "../RG"
  varrg  = var.varenvrg
}
module "samodule" {
  source = "../SA"
  varsa  = var.varenvsa
  depends_on = [ module.rgmodule ]
}

module "vnmodule" {
  source = "../VN"
  varvn  = var.varenvvn
  depends_on = [ module.rgmodule ]
}

module "snmodule" {
  source = "../SN"
  varsn  = var.varenvsn
  depends_on = [ module.vnmodule ]
}