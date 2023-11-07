Add-Type -AssemblyName System.Windows.Forms # Required for Send
[void][System.Reflection.Assembly]::LoadWithPartialName("'Microsoft.VisualBasic") # Required for Activate

Function Send {
	param(
		[Parameter(Mandatory)]
		[string]$text
	)
	[System.Windows.Forms.SendKeys]::SendWait($text)
}

Function Start {
	param(
		[Parameter(Mandatory)]
		[string]$FilePath
	)
	Start-Process -FilePath $FilePath -Wait
}

Function Activate {
	param(
		[Parameter(Mandatory)]
		[string]$WindowTitle
	)
	[Microsoft.VisualBasic.Interaction]::AppActivate($WindowTitle)
}
