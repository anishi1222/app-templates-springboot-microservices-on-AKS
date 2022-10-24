# Install silently
$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi
Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'

# Delete MSI installer
rm .\AzureCLI.msi

# Install kubectl
Install-AzAksKubectl -Version latest