# Script para instalar a versão mais recente do ClickShare Extension Pack

# Variável para o caminho do instalador do ClickShare Extension Pack
$InstallerPath = "ClickShare-Extension-Pack-01.02.00.0006.msi"
$ScriptPath = [System.IO.Path]::GetDirectoryName($MyInvocation.MyCommand.Definition)

# Função para instalar o ClickShare Extension Pack
function Install-ClickShare {
    Start-Process -FilePath "C:\Windows\system32\msiexec.exe" -ArgumentList "/I", "$ScriptPath\$InstallerPath", "/QN", "ACCEPT_EULA=YES" -Wait
}

# Instalar o ClickShare Extension Pack
Install-ClickShare