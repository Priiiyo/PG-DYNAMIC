cd ErfanGSIs/output   
curl -sL https://git.io/file-transfer | sh    
telegram -m $('./transfer $MIR "$ZIP_NAME-GSI-Aonly.7z" | grep -o -P "(?<=Download Link: )\S+")'
telegram -m $('./transfer $MIR "$ZIP_NAME-GSI-AB.7z" | grep -o -P "(?<=Download Link: )\S+")'

