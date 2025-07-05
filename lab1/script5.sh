#!/usr/bin/bash
cd ~/lab0

chmod u+w gengar6
rm gengar6

chmod u+w onix9
rm onix9/unfezant

rm Copy_*

chmod -R u+wr galvantula4
find galvantula4/ -type f -name 'armaldogurdu*' -exec rm {} +

chmod u+w galvantula4/spheal
rmdir galvantula4/spheal

chmod -R 777 galvantula4
rm -Rf galvantula4
