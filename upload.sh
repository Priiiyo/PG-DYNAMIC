cd ErfanGSIs/output   
curl -sL https://git.io/file-transfer | sh    
echo "::set-env name=DOWNLOAD_A::$(./transfer $MIR "$ZIP_NAME-GSI-Aonly.7z" | grep -o -P '(?<=Download Link: )\S+')"
echo "::set-env name=DOWNLOAD_AB::$(./transfer $MIR "$ZIP_NAME-GSI-AB.7z" | grep -o -P '(?<=Download Link: )\S+')"

python robot.py
