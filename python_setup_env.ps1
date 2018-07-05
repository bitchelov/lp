Set-Location $PSScriptRoot
Invoke-Command {python -m venv dev_env}
Set-Location -Path "dev_env\Scripts"
.\activate
$updatepip = Start-Job { python -m pip install --upgrade pip }
Wait-Job $updatepip
Set-Location $PSScriptRoot
pip install -r requirements.txt