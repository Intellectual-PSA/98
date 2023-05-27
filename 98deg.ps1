while ($true) {
    $temp = Get-WmiObject MSAcpi_ThermalZoneTemperature -Namespace "root\wmi"
    $currentTempKelvin = $temp.CurrentTemperature / 10 - 273.15
    $currentTempFahrenheit = ($currentTempKelvin * 9/5) + 32

    if ($currentTempFahrenheit -ge 98) {
        Write-Output "Warning: CPU temperature is above 98 degrees Fahrenheit"
    }

    Start-Sleep -Seconds 1
}
