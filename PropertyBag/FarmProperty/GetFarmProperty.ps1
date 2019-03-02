asnp *sharepoint*

$propKey = ""

[System.Reflection.Assembly]::Load("Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c")
[System.Reflection.Assembly]::Load("Microsoft.Practices.ServiceLocation, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35")
[System.Reflection.Assembly]::Load("Microsoft.Practices.SharePoint.Common, Version=2.0.0.0, Culture=neutral, PublicKeyToken=ef4330804b3c4129")
$serviceLocator = [Microsoft.Practices.SharePoint.Common.ServiceLocation.SharePointServiceLocator]::GetCurrent()
$configManager = $serviceLocator.GetInstance([Microsoft.Practices.SharePoint.Common.Configuration.IConfigManager])
$farmBag = $configManager.GetPropertyBag([Microsoft.Practices.SharePoint.Common.Configuration.ConfigLevel]::CurrentSPFarm)
$configManager.GetFromPropertyBag([System.String],$propKey,[Microsoft.Practices.SharePoint.Common.Configuration.ConfigLevel]::CurrentSPFarm)
