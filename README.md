# Lead DevOps Engineer technical exercise

## Scenario

A product team has created its first Terraform implementation for a proposed production-facing web workload in Azure. The configuration defines a Linux virtual machine, a virtual network, network security configuration, public connectivity and a storage account. An illustrative GitHub Actions workflow describes validation, planning and applying infrastructure changes. No application is deployed by this repository.

You are joining UK Parliament Digital Service as a hands-on Lead DevOps Engineer contractor. Review the implementation and help the team decide what should change before this solution is used in production.

## What to do

This is a collaborative exercise of approximately one hour. Inspect the Terraform and GitHub Actions workflow, identify and prioritise material risks, then make a small number of focused changes while explaining your reasoning, assumptions and trade-offs.

Consider security, reliability, operability, maintainability and how the approach could be reused across engineering teams. You are not expected to address every possible improvement; risk-based prioritisation matters more than the number of findings. You are welcome to consult documentation and are encouraged to ask clarifying questions.

## Repository overview

- `terraform/` contains the Azure infrastructure configuration.
- `.github/workflows/infrastructure.yml` contains the illustrative infrastructure workflow.

## Local validation

Terraform and an editor or IDE are useful for this exercise. With Terraform installed, run:

```shell
terraform -chdir=terraform fmt -check -recursive
terraform -chdir=terraform init -backend=false
terraform -chdir=terraform validate
```

The workflow assumes Azure identity and an existing remote state backend; its Azure-connected jobs are disabled. No Azure subscription or credentials are required.

**Do not deploy anything.** Do not run `terraform plan` against Azure or `terraform apply`.
