param( $user_input )

if ($user_input -eq $null) { 
  CLS
  Write-Host -f Yellow "User input is required."
  exit
}

# Start of Script!
CLS

function do_this{
    Write-Host "Let's do this!"
}

Write-Host ""
Write-Host "Start of Script!"
Write-Host ""

# Hello World!
Write-Host "Hello World!"

do_this

Write-Host ""
Write-Host "End of Script!"
Write-Host ""

# End of Script!
