# Fetch Minikube IP address
$minikubeIP = & minikube ip

# Specify the URL and the hostname you want to associate with the Minikube IP
$hostname = "dadjokes.anitha"

# Build the hosts file entry
$hostsEntry = "$minikubeIP $hostname"

# Check if the hosts file entry already exists
$hostsFile = "C:\Windows\System32\drivers\etc\hosts"
$hostsContent = Get-Content $hostsFile
$entryExists = $hostsContent -contains $hostsEntry

# Add the hosts file entry if it doesn't already exist
if (-not $entryExists) {
    Add-Content -Path $hostsFile -Value $hostsEntry
    Write-Host "Hosts file entry added."
} else {
    Write-Host "Hosts file entry already exists."
}
