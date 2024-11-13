variable "varenvrg" {}
variable "varenvsa" {}

module "rgmodule" {
  source = "../RG"
  varrg  = var.varenvrg
}

module "samodule" {
  source = "../SA"
  varsa  = var.varenvsa
  depends_on = [ module.rgmodule ]
}