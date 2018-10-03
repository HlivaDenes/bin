#!/bin/bash
echo "`date` ------------------------------------------------------------" >> vmware_updater
sudo vmware-modconfig --console --install-all >> vmware_updater
echo "`date` ************************************************************" >> vmware_updater
