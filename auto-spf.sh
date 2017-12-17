#!/bin/bash
echo 'Starting SPF script'

IFS="$"
cd /var/named
/bin/ls  /var/cpanel/users | grep -v "root\|system\|passwd\|cpanel\|nobody\|mysql\|\`\|\-\|\." | while read CPUSER; do
echo "Installing SPF for ${CPUSER}'";
/usr/local/cpanel/bin/spf_installer "${CPUSER}" > /dev/null
done

echo 'Finished SPF script'
