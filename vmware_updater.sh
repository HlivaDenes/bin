#!/bin/bash
if [ -e vmware_updater ]
then
    echo "vmware_updater már lefutott"
else
echo "`date` ------------------------------------------------------------" >> vmware_updater
sudo vmware-modconfig --console --install-all >> vmware_updater
echo "`date` ************************************************************" >> vmware_updater
fi
