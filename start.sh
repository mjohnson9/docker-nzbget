#!/bin/sh

if [ ! -e "/config/nzbget.conf" ]; then
	cat /usr/share/nzbget/nzbget.conf | sed 's/^MainDir=.*$/MainDir=\/downloads/g' > /config/nzbget.conf
fi

exec /usr/bin/nzbget -s -c /config/nzbget.conf -o outputmode=log
