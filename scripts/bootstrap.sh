#!/bin/bash

# Variables
RESOURCE_GROUP="rg-dev-opella"
LOCATION="westeurope"
STORAGE_ACCOUNT="stadevopellatfstate"
CONTAINER_NAME="tfstate"

# Verificar si el Resource Group ya existe
if [ "$(az group exists --name $RESOURCE_GROUP)" = "false" ]; then
  echo "Creando Resource Group: $RESOURCE_GROUP..."
  az group create --name $RESOURCE_GROUP --location $LOCATION
else
  echo "El Resource Group '$RESOURCE_GROUP' ya existe. Omitiendo creación."
fi

# Crear Storage Account si no existe
if [ -z "$(az storage account list --query "[?name=='$STORAGE_ACCOUNT']" -o tsv)" ]; then
  echo "Creando Storage Account: $STORAGE_ACCOUNT..."
  az storage account create \
    --name $STORAGE_ACCOUNT \
    --resource-group $RESOURCE_GROUP \
    --location $LOCATION \
    --sku Standard_LRS \
    --encryption-services blob
else
  echo "El Storage Account '$STORAGE_ACCOUNT' ya existe. Omitiendo creación."
fi

# Crear Container si no existe
if [ -z "$(az storage container list --account-name $STORAGE_ACCOUNT --query "[?name=='$CONTAINER_NAME']" -o tsv)" ]; then
  echo "Creando Container: $CONTAINER_NAME..."
  az storage container create \
    --name $CONTAINER_NAME \
    --account-name $STORAGE_ACCOUNT
else
  echo "El Container '$CONTAINER_NAME' ya existe. Omitiendo creación."
fi