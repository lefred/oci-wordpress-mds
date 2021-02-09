#!/bin/bash

#mysqlsh ${admin_username}:'${admin_password}'@${mds_ip} --sql -e "CREATE DATABASE ${wp_schema};"
#mysqlsh ${admin_username}:'${admin_password}'@${mds_ip} --sql -e "CREATE USER ${wp_name} identified by '${wp_password}';"
#mysqlsh ${admin_username}:'${admin_password}'@${mds_ip} --sql -e "GRANT ALL PRIVILEGES ON ${wp_schema}.* TO ${wp_name};"

DEDICATED=${dedicated}
INSTANCE=${instancenb}

if [ "$DEDICATED" == "true" ]
then
   wpschema="${wp_schema}$INSTANCE"
   wpname="${wp_name}$INSTANCE"
else
   wpschema="${wp_schema}"
   wpname="${wp_name}"
fi


mysqlsh --user ${admin_username} --password=${admin_password} --host ${mds_ip} --sql -e "CREATE DATABASE $wpschema;"
mysqlsh --user ${admin_username} --password=${admin_password} --host ${mds_ip} --sql -e "CREATE USER $wpname identified by '${wp_password}';"
mysqlsh --user ${admin_username} --password=${admin_password} --host ${mds_ip} --sql -e "GRANT ALL PRIVILEGES ON $wpschema.* TO $wpname;"

echo "WordPress Database and User created !"
echo "WP USER = $wpname"
echo "WP SCHEMA = $wpschema"
