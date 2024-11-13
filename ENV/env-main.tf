variable "varenvrg" {}
variable "varenvsa" {}
variable "varenvvn" {}

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