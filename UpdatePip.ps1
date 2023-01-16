#! powershell.exe
# Update pip
$pip = 'pip'
$version = (Invoke-Expression "$pip --version").Trim()
Write-Host "Updating $pip version $version..."
Invoke-Expression "$pip install --upgrade pip"

# Keep the PowerShell window open
Read-Host -Prompt "Press Enter to close the window..."
