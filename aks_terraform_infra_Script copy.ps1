if (-not (Test-Path ".\Environments")) { New-Item -Path "." -Name "Environments" -ItemType "directory" }
if (-not (Test-Path ".\Environments\Dev")) { New-Item -Path ".\Environments" -Name "Dev" -ItemType "directory" }

if (-not (Test-Path ".\Modules")) { New-Item -Path "." -Name "Modules" -ItemType "directory" }
if (-not (Test-Path ".\Modules\Resource_group")) { New-Item -Path ".\Modules" -Name "Resource_group" -ItemType "directory" }
if (-not (Test-Path ".\Modules\Vnet")) { New-Item -Path ".\Modules" -Name "Vnet" -ItemType "directory" }
if (-not (Test-Path ".\Modules\keyvault")) { New-Item -Path ".\Modules" -Name "keyvault" -ItemType "directory" }
if (-not (Test-Path ".\Modules\AKS")) { New-Item -Path ".\Modules" -Name "AKS" -ItemType "directory" }

if (-not (Test-Path ".\Environments\Dev\main.tf")) { New-Item -Path ".\Environments\Dev" -Name "main.tf" -ItemType "file" }
if (-not (Test-Path ".\Environments\Dev\provider.tf")) { New-Item -Path ".\Environments\Dev" -Name "provider.tf" -ItemType "file" }
if (-not (Test-Path ".\Environments\Dev\variables.tf")) { New-Item -Path ".\Environments\Dev" -Name "variables.tf" -ItemType "file" }
if (-not (Test-Path ".\Environments\Dev\terraform.tfvars")) { New-Item -Path ".\Environments\Dev" -Name "terraform.tfvars" -ItemType "file" }

if (-not (Test-Path ".\Modules\Resource_group\main.tf")) { New-Item -Path ".\Modules\Resource_group" -Name "main.tf" -ItemType "file" }
if (-not (Test-Path ".\Modules\Resource_group\variables.tf")) { New-Item -Path ".\Modules\Resource_group" -Name "variables.tf" -ItemType "file" }

if (-not (Test-Path ".\Modules\Vnet\main.tf")) { New-Item -Path ".\Modules\Vnet" -Name "main.tf" -ItemType "file" }
if (-not (Test-Path ".\Modules\Vnet\variables.tf")) { New-Item -Path ".\Modules\Vnet" -Name "variables.tf" -ItemType "file" }

if (-not (Test-Path ".\Modules\keyvault\main.tf")) { New-Item -Path ".\Modules\keyvault" -Name "main.tf" -ItemType "file" }
if (-not (Test-Path ".\Modules\keyvault\variables.tf")) { New-Item -Path ".\Modules\keyvault" -Name "variables.tf" -ItemType "file" }

if (-not (Test-Path ".\Modules\AKS\main.tf")) { New-Item -Path ".\Modules\AKS" -Name "main.tf" -ItemType "file" }
if (-not (Test-Path ".\Modules\AKS\variables.tf")) { New-Item -Path ".\Modules\AKS" -Name "variables.tf" -ItemType "file" }
