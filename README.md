# azvm-modular-tf

Daniel Jaraba

---

## How to run:

### Requeriments:

- SO with Terraform installed and logged in an Azure account.
- ```.tfvars``` file with the values for the variables defined in ```variables.tf```.

### Steps:

1. Prepare working directory for Terraform:

```
terraform init
```

2. Validate terraform configuration:

```
terraform validate
```

3. Validate and show the changes required for this configuration:

```
terraform plan
```

4. Create the infrastructure:

```
terraform apply
```

---

## About:

IaC for Azure Virtual Machine defined in Terraform with a module that permits to deploy multiple machines reusing the same module.

### Module vm:

Contain the resources required for the deploy of a single virtual machine:

- Azure Public IP.
- Azure Network Interface.
- Azure Network Security Group.
- Azure Network Interface Security Group Association.
- Azure Network Security Rule.
- Azure Virtual Machine.
  * Storage OS Disk.

### Main:

Contain the resources required for a group of virtual machines:

- Azure Resource Group.
- Azure Virtual Network.
- Azure Subnet.
- Module vm.
