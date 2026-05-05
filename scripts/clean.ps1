$ErrorActionPreference = "Stop"

$build = Resolve-Path -LiteralPath "build" -ErrorAction SilentlyContinue
if ($null -ne $build) {
  Remove-Item -LiteralPath $build.Path -Recurse -Force
}
