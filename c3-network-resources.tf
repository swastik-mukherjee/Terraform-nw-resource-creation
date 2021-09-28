# Create virtual network
resource "azurerm_virtual_network" "vnettf" {
  name                = "vnet-via-tf"
  location            = azurerm_resource_group.rgtf.location
  resource_group_name = azurerm_resource_group.rgtf.name
  address_space       = ["10.0.0.0/16"]
  tags = {
    "Name" = "Vnet created via Terraform"
  }

}
#Create Subnet
resource "azurerm_subnet" "subnettf" {
  name                 = "subnet-via-tf"
  resource_group_name  = azurerm_resource_group.rgtf.name
  virtual_network_name = azurerm_virtual_network.vnettf.name
  address_prefixes     = ["10.0.2.0/24"]

}

#create Public IP
resource "azurerm_public_ip" "piptf" {
  name                = "pip-via-tf"
  resource_group_name = azurerm_resource_group.rgtf.name
  location            = azurerm_resource_group.rgtf.location
  allocation_method   = "Static"
  tags = {
    "environment" = "test"
  }
}

#create Azure Nic
resource "azurerm_network_interface" "nictf" {
  name                = "nic-via-tf"
  resource_group_name = azurerm_resource_group.rgtf.name
  location            = azurerm_resource_group.rgtf.location
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnettf.id
    private_ip_address_allocation = "dynamic"
    public_ip_address_id          = azurerm_public_ip.piptf.id
  }


}
