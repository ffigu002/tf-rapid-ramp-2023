#!/bin/bash
#set -e
repoPath=$1
environment=$2
configPath=$3
relativePath=$4

#navigate to TF configuration path
cd .$configPath$relativePath

ls -Flah

ARM_SUBSCRIPTION_ID=$(az account show --query id --out tsv)
export ARM_CLIENT_ID=$servicePrincipalId
export ARM_CLIENT_SECRET=$servicePrincipalKey
export ARM_SUBSCRIPTION_ID=$ARM_SUBSCRIPTION_ID
export ARM_TENANT_ID=$tenantId

#export TF_LOG=trace
terraform plan -out $environment.tfplan -input=false