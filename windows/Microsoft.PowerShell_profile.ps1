# windows powershell 配置路径
# C:\Users\YourUserName\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

<#
function Prompt {
    $currentDir = Split-Path -Leaf (Get-Location)
    "[$currentDir]# "
}
#>

Import-Module posh-git

function Prompt {
    # 获取当前目录
    $currentDir = Split-Path -Leaf (Get-Location)

    # 检查是否在 Git 仓库中，并显示当前分支
    if ($gitStatus = Get-GitStatus) {
        Write-Host "[$currentDir] " -ForegroundColor Yellow -NoNewline
        Write-Host  "($($gitStatus.Branch))" -ForegroundColor Green -NoNewline
        " "
    } else {
        "[$currentDir]# "
    }
}
