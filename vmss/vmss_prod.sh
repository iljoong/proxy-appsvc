#!/bin/bash

cat azuredeploy.parameters.json

az group create -n <resource-group> -l koreasouth

az group deployment create -n <deployment> -g <resource-group> --template-file azuredeploy.json --parameters @azuredeploy.parameters.json --verbose
