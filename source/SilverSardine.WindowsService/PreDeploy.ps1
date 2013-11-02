$ServiceName = "SilverSardine"

$service = Get-Service $ServiceName -ErrorAction SilentlyContinue


if (! $service)
{
    Write-Host "The service is not yet installed. Nothing to do."
}
else
{
    Write-Host "The service will be stopped."

    Stop-Service $ServiceName -Force
}
