[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
Import-Module posh-git
oh-my-posh init pwsh --config 'C:\Users\leqort\.config\powershell\leqort.omp.json' | Invoke-Expression

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias ll ls
Set-Alias g git
