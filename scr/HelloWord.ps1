Write-Output "Hello, World!"

# .\HelloWord.ps1


# Simple demo
# Display all files in the current directory
$files = Get-ChildItem

Write-Output "Files in the current directory:"
foreach ($file in $files) {
    Write-Output $file.Name
}