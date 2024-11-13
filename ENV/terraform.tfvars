varenvrg = {
  rg01 = {
    name     = "rgd01"
    location = "swedencentral"
  }
  rg02 = {
    name     = "rgd02"
    location = "swedencentral"
  }
}
varenvsa={
  sa01={
    name= "stad01"
    location= "swedencentral"
    rgname= "rgd01"
    account_tier= "Standard"
    account_replication_type= "LRS"
  }
  sa02={
    name= "stad02"
    location= "swedencentral"
    rgname= "rgd02"
    account_tier= "Standard"
    account_replication_type= "LRS"
  }

}

varenvvn={
  vn01 = {
    name                = "vntd01"
    location            = "swedencentral"
    resource_group_name = "rgd01"
    address_space       = ["10.0.0.0/24"]
  }

  vn01 = {
    name                = "vntd02"
    location            = "swedencentral"
    resource_group_name = "rgd02"
    address_space       = ["10.0.0.0/24"]
  }  


}