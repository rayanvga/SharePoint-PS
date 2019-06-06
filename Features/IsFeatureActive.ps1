asnp *sharepoint*

(Get-SPFeature -Identity "Guid" -ErrorAction SilentlyContinue -WebApplication "url") -ne $null
