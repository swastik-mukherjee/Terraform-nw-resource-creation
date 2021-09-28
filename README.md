---
Primary Network Resource Creation in Azure via Terraform
---


## Installation
You need to install following tools to successfully execute the Terraform code to create infrastructure.
- [Terraform CLI](https://www.terraform.io/downloads.html)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
- [VS Code Editor](https://code.visualstudio.com/download)
- [VS Code Plugin For Terraform](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform)
- [Git Client](https://git-scm.com/downloads)



## Step-01: Cloning The Repository
- Open Terminal
- Change the current working directory to the location where you want the cloned directory
- Execute the following command

```bash
git clone https://github.com/swastik-mukherjee/Terraform-nw-resource-creation.git
```

## Step-02: open the directory in VS code Editor and Modify accordingly
Once all the tools are installed and AZ cli are configured properly you can now able to play with the code. All the files in the repository starting with c1 signifies it as the configuration file. 

##
- c1-versions.tf 
- c2-resource-group.tf
- c3-network-resources.tf


## Step-3: Execute the code to create Infrastructure
  

```python
#Initialize a working directory of configuration file
terraform init

# Validates the syntax of every configuration file
terraform validate

# Creates an execution plan for the resources
terraform plan

# Creates the actual resources in the Azure portal
terraform apply -auto-approve
```
## Step-4: Verify the resources created  in the Azure portal
you can login to portal.azure.com with your login id and password. Refresh the page and you can see all the infrastructure created as per the configuration specified.

## Step-5: Destroy the resources (Optional)
```python
# Optional - If you want to delete all the resources created in the environment
terraform destroy -auto-approve

# Delete Terraform files 
rm -rf .terraform*
rm -rf terraform.tfstate*
```
## Step-6: Verify the resources deleted in the Azure portal
you can login to portal.azure.com with your login id and password. Refresh the page and you can see all the infrastructure created as per the configuration specified.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Feedback

If you have any feedback, please reach out to me at swastik.reach@gmail.com
## Authors

- [@SwastikMukherjee](https://github.com/swastik-mukherjee)


## License
[MIT](https://choosealicense.com/licenses/mit/)
