param(
  [string]$Target = "main.tex",
  [string]$Engine = "xelatex"
)

$ErrorActionPreference = "Stop"

if ($Engine -eq "latexmk") {
  latexmk $Target
  exit $LASTEXITCODE
}

if (-not (Test-Path "build")) {
  New-Item -ItemType Directory -Path "build" | Out-Null
}

& $Engine -interaction=nonstopmode -file-line-error -synctex=1 -output-directory=build $Target
exit $LASTEXITCODE
