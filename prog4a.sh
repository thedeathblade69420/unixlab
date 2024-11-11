systemspace=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
echo "$systemspace% of system is currently being used"
if [ $systemspace -gt 80 ];
then
    echo "Low system space"
    find / -type f -exec ls -h \; 2>/dev/null
    if [ $? -eq 0 ];
    then
    echo "no Files larger than 1GB found / insufficient perms"
    fi
else
    echo system space under control
fi