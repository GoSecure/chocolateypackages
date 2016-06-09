param($PackageName)

$ErrorActionPreference = 'Stop'

$here = Split-Path $MyInvocation.MyCommand.Definition
$source = Join-Path $here "packages\$PackageName"

choco install --force --yes --source "$source;http://chocolatey.org/api/v2/" $PackageName
