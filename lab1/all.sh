#!/usr/bin/bash
ssh helios << EOF
cd ~
chmod 777 lab0
cd lab0
chmod a+rwx *
cd galvantula4
chmod a+rwx *
cd frillish
chmod a+rwx *
cd ../..
cd ~/lab0/linoone3
chmod a+rwx *
cd ..
cd ~/lab0/onix9
chmod a+rwx *

EOF