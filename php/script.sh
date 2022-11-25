#!/bin/bash
cd /usr/local/
ln -s /usr/local/wifilan-2-5-ng/wifilan-portal portal
ln -s /usr/local/wifilan-2-5-ng/smartap smartap
ln -s /usr/local/wifilan-2-5-ng/wifilan-admin-console wifilan


#copy files
cd /usr/local/wifilan-2-5-ng/ServerConfigurationFiles/
cp inc.php /usr/local/portal/include/
cp dbinfo_smartap.php /usr/local/smartap/v3/include/dbinfo.php
cp dbinfo.php /usr/local/wifilan/include/
cp portalconstants.php /usr/local/wifilan/include/

# Provide owner permission

cd /usr/local/wifilan-2-5-ng/wifilan-admin-console
chown -R www-data:www-data ads/
chown -R www-data:www-data billing/img/
chown -R www-data:www-data admin/pdf/
chown -R www-data:www-data admin/customer_dump/
chown -R www-data:www-data portalconfig/
chown -R www-data:www-data crm/img/
chown -R www-data:www-data subscription/pcd /usr/local/wifilandf/
chown -R www-data:www-data assets_wifilan/img/heatmap/

cd /usr/local/wifilan-2-5-ng/wifilan-portal
chown -R www-data:www-data  portalconfig/

cd /usr/local/wifilan
chown -R www-data:www-data portalconfig/


cd /usr/local/wifilan/smartap/v3/ap
chown -R www-data:www-data config/
chown -R www-data:www-data firmware/
chown -R www-data:www-data ovscert/
chown -R www-data:www-data vpncert/

cd /usr/local/smartap/v3/ap
chown -R www-data:www-data config/
chown -R www-data:www-data firmware/
chown -R www-data:www-data ovscert/
chown -R www-data:www-data vpncert/


cd /usr/local/wifilan/billing
chown -R www-data:www-data img/


cd /usr/local/wifilan/assets_wifilan
chown -R www-data:www-data ap_models/

#provide User permission

cd /usr/local/wifilan-2-5-ng/wifilan-admin-console
chmod -R 755 ads/
chmod -R 755 billing/img/
chmod -R 755 admin/pdf/
chmod -R 755 admin/customer_dump/
chmod -R 755 portalconfig/
chmod -R 755 crm/img/
chmod -R 755 subscription/pdf/
chmod -R 755 smartap/v3/ap/config/
chmod -R 755 smartap/v3/ap/vpncert/
chmod -R 755 smartap/v3/ap/ovscert/
chmod -R 755 smartap/v3/ap/firmware/
chmod -R 755 assets_wifilan/img/heatmap/

#Copy Gateway directory
cd /usr/local/wifilan-2-5-ng/wifilan-portal/
cp -r gateway /var/www/html/gatewaylogin





