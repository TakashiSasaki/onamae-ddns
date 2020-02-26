.ONESHELL:

help:
	# sudo make insatll

install:
	@
	ln -sf `readlink -f mylocalipaddresses.sh` /usr/local/bin/mylocalipaddresses
	ln -sf `readlink -f mylocalipaddress.sh` /usr/local/bin/mylocalipaddress
	ln -sf `readlink -f myglobalipaddress.sh` /usr/local/bin/myglobalipaddress
	ln -sf `readlink -f onamae-ddns.sh` /usr/local/bin/onamae-ddns
