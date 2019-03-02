Add-PSSnapin Microsoft.SharePoint.PowerShell
  
$siteURL = ""
$propKey = ""
$propValue = ""

$web=Get-SPWeb $siteURL 
$web.AllProperties.Add($propKey, $propValue)
$web.Update()
