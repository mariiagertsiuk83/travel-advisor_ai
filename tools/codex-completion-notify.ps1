param(
    [Parameter(Mandatory = $true, Position = 0)]
    [string]$NotificationJson
)

$completionMarker = '<!-- codex-main-task-complete -->'
$notification = $NotificationJson | ConvertFrom-Json

if ($notification.type -ne 'agent-turn-complete') {
    exit 0
}

$lastMessage = [string]$notification.'last-assistant-message'
if (-not $lastMessage.Contains($completionMarker)) {
    exit 0
}

$speaker = New-Object -ComObject SAPI.SpVoice
try {
    $completionPhrase = -join @(
        [char]0x0417, [char]0x0430, [char]0x0434, [char]0x0430,
        [char]0x0447, [char]0x0443, [char]0x0020, [char]0x0432,
        [char]0x0438, [char]0x043A, [char]0x043E, [char]0x043D,
        [char]0x0430, [char]0x043D, [char]0x043E, [char]0x0021
    )
    $null = $speaker.Speak($completionPhrase)
}
finally {
    [System.Runtime.InteropServices.Marshal]::FinalReleaseComObject($speaker) | Out-Null
}
