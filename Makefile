.ONESHELL:

help:
	# sudo make insatll

install:
	@
	ln -s `readlink -f mylocalipaddresses.sh` /usr/local/bin/mylocalipaddresses
	ln -s `readlink -f mylocalipaddress.sh` /usr/local/bin/mylocalipaddress
	ln -s `readlink -f myglobalipaddress.sh` /usr/local/bin/myglobalipaddress
	ln -s `readlink -f onamae-ddns.sh` /usr/local/bin/onamae-ddns

