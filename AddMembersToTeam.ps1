# 獲取當前目錄下的所有文件
$files = Get-ChildItem -Path .

# 遍歷並打印每個文件的名稱
foreach ($file in $files) {
    Write-Output $file.Name
}