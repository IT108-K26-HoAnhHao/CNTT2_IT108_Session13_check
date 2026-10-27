# AUDIT: xác nh?n dã th?m d?nh script
$date = Get-Date -Format "yyyy-MM-dd HH:mm"
Write-Output "========================================" > "..\backup\bao-cao-su-co.txt"
Write-Output "BAO CAO SU CO - SMARTFARM" >> "..\backup\bao-cao-su-co.txt"
Write-Output "Ngay gio: $date" >> "..\backup\bao-cao-su-co.txt"
Write-Output "========================================" >> "..\backup\bao-cao-su-co.txt"
Get-Content "..\data\log-he-thong.log" | Select-String "CRITICAL", "ERROR" >> "..\backup\bao-cao-su-co.txt"
Write-Output "========================================" >> "..\backup\bao-cao-su-co.txt"
Write-Output "TONG SO SU CO:" >> "..\backup\bao-cao-su-co.txt"
$count = (Get-Content "..\data\log-he-thong.log" | Select-String "CRITICAL", "ERROR").Count
Write-Output "$count" >> "..\backup\bao-cao-su-co.txt"
