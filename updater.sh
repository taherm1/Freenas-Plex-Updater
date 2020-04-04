#!/bin/csh

cd /usr/local/share/
wget https://downloads.plex.tv/plex-media-server-new/1.18.9.2578-513b381af/freebsd/PlexMediaServer-1.18.9.2578-513b381af-FreeBSD-amd64.tar.bz2
tar -xvf PlexMediaServer-1.18.9.2578-513b381af-FreeBSD-amd64.tar.bz2
rm PlexMediaServer-1.18.9.2578-513b381af-FreeBSD-amd64.tar.bz2
mv plexmediaserver plexmediaserver-old-`date +%Y-%m-%d.%H:%M:%S`
mv PlexMediaServer-1.18.9.2578-513b381af/ plexmediaserver
chown -R root:wheel plexmediaserver
chmod 775 plexmediaserver/*
ln ./plexmediaserver/Plex\ Media\ Server ./plexmediaserver/Plex_Media_Server
chmod -h 775 ./plexmediaserver/Plex_Media_Server
