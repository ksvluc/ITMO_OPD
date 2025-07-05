#!/usr/bin/bash
cd ~/lab0

touch /tmp/s467392_vivod
cat ./*n ./*/*n | wc -m >/tmp/s467392_vivod 2>&1

ls -ltR 2>/dev/null | grep 'l$' | head -n 3

grep -i -v 'e$' simisear2

cat galvantula4/armaldo linoone3/luxray linoone3/claffa onix9/stoutland onix9/lotad 2>/tmp/errors.log | sort

grep -i "de" simisear2 2>&1

cat -n linoone3/luxray onix9/stoutland | grep -i 'we'
