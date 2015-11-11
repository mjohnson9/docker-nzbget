#!/bin/sh

if [ ! -e "/config/nzbget.conf" ]; then
	gunzip -c /usr/share/doc/nzbget/examples/nzbget.conf.gz | sed 's/^MainDir=.*$/MainDir=\/downloads/g' > /config/nzbget.conf
fi

exec /usr/bin/nzbget -D -c /config/nzbget.conf -o outputmode=color
