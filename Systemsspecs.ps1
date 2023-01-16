$computer = gwmi win32_computersystem
$cpu = gwmi win32_processor
$memory = gwmi win32_physicalmemory
$os = gwmi win32_operatingsystem

$totalMem = ($memory | ForEach-Object {[Math]::Round($_.Capacity/1GB,2)} | Measure-Object -sum).sum

Write-Host "Computer Name: " $computer.Name
Write-Host "Manufacturer: " $computer.Manufacturer
Write-Host "Model: " $computer.Model
Write-Host "Number of Processors: " $computer.NumberOfProcessors
Write-Host "Processor: " $cpu.Name
Write-Host "Total Memory: " $totalMem "GB"
Write-Host "Operating System: " $os.Caption
Read-Host -Prompt "Press Enter to exit"
