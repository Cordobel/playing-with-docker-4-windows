foreach ($item in $(docker ps -q))
{
  Write-Host "Ports from $($item)";
  $ports = docker port $item;
  if ($null -eq $ports)
  {
    Write-Host "Ther is no publishd ports to the host"
  }
  else
  {
    $ports
  }
  Write-Host "";
}
