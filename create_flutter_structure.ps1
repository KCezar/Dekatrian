# create_flutter_structure.ps1
# Cria a estrutura de pastas da arquitetura Flutter + Riverpod no Windows

$base = "lib"
$dirs = @(
  "core",
  "data\datasources",
  "data\dtos",
  "data\repositories",
  "domain\models",
  "domain\repositories",
  "domain\usecases",
  "application\services",
  "presentation\controllers",
  "presentation\screens",
  "presentation\widgets"
)

# Garante que lib\ existe
if (-not (Test-Path $base)) {
  New-Item -ItemType Directory -Path $base | Out-Null
}

# Cria cada subpasta
foreach ($d in $dirs) {
  $full = Join-Path $base $d
  New-Item -ItemType Directory -Path $full -Force | Out-Null
}

Write-Host ('✔ Estrutura criada em ' + $base + '\') -ForegroundColor Green