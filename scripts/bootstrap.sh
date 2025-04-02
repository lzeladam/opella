#!/bin/bash

# Variables
RESOURCE_GROUP="rg-dev-opella"
LOCATION="westeurope"
STORAGE_ACCOUNT="stadevopellatfstate"
CONTAINER_NAME="tfstate"

# Crear Resource Group si no existe
if [ "$(az group exists --name $RESOURCE_GROUP)" = "false" ]; then
  az group create --name $RESOURCE_GROUP --location $LOCATION
fi

# Crear Storage Account si no existe
if [ -z "$(az storage account list --query "[?name=='$STORAGE_ACCOUNT']" -o tsv)" ]; then
  az storage account create \
    --name $STORAGE_ACCOUNT \
    --resource-group $RESOURCE_GROUP \
    --location $LOCATION \
    --sku Standard_LRS \
    --encryption-services blob
fi

# Crear Container si no existe
if [ -z "$(az storage container list --account-name $STORAGE_ACCOUNT --query "[?name=='$CONTAINER_NAME']" -o tsv)" ]; then
  az storage container create \
    --name $CONTAINER_NAME \
    --account-name $STORAGE_ACCOUNT
fi