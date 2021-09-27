$VER = $(Invoke-WebRequest https://raw.githubusercontent.com/usgs-coupled/phreeqc-version/main/phreeqc-version.txt -UseBasicParsing).Content
$v = $VER -split "\."
if ([string]::IsNullOrEmpty($v[1])) {
    $v[2] = 0
    $v[2] = 0
}
if ([string]::IsNullOrEmpty($v[2])) {
  $v[2] = 0
}
else {
  $v[2] = 1 + $v[2]
}
$VER = $v -join "."
Write-Output $VER
