# terraform-template

Opinionated Template Repo for managing applications on a Civo Kubernetes cluster 

## Quick Start

1. Create a new git repo from this template

2. Copy terraform.tfvars.example to terraform.tfvars

   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```

3. Update the variable in terraform.tfvars with your Civo API Key (Get your civo.com api key - https://dashboard.civo.com/security)

4. Run `terraform init`

5. Run `terraform apply`

6. Check the state of the pods in the cluster using: 

   ```yaml
   KUBECONFIG=`pwd`/kubeconfig kubectl get po -A
   ```

7. Visit the nginx pod using the ingress 

8. > TODO: a terraform kubernetes service with Traefik annotation pointed to the nginx deployment is required

## HLD

This is an overview of the infrastructure being managed by this repo.  

![HLD](./hld.excalidraw.png)

## Terraform Provider Documentation

* https://registry.terraform.io/providers/civo/civo/1.0.18
* https://registry.terraform.io/providers/hashicorp/helm/2.6.0
* https://registry.terraform.io/providers/hashicorp/kubernetes/2.11.0
* https://registry.terraform.io/providers/hashicorp/local/2.2.3
## Variables

| Name | Type | Description | Default |
|------|------|-------------|---------|
| civo_token | string | API Token for civo.com | "" | 
| kuberentes_api_access |  list | list of IP addresses / subnets to allow access to the cluster api | [ "0.0.0.0/0" ] |
| cluster_web_access | list | list of IP addresses / subnets to allow access to port 80 | [ "0.0.0.0/0" ] |
| cluster_websecure_access | list | list of IP addresses / subnets to allow access to port 443 | [ "0.0.0.0/0" ] |

## Contribution Guide

> TBC

## Acknowledgements

- https://www.hashicorp.com
- https://github.com/excalidraw/excalidraw