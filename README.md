This is a source package repository for a OpenWrt buildroot. Mainly for the
TP-Link WR710N because it has 8MB flash.

*Usage*:

Put this inside your feeds.conf:

`src-git netplayer https://github.com/m42i/netplayer.git`

*Contains*:
- [upmpdcli](http://www.lesbonscomptes.com/upmpdcli/) for UPnP/[OpenHome](http://openhome.org/) compatible
  devices

- [shairport-sync](https://github.com/mikebrady/shairport-sync) for AirPlay compatible devices
  (currently hard copied from github.com/mikebrady/shairport-sync-for-openwrt 
  because submodules don't work well with OpenWrt package feeds)

- [squeezelite](https://code.google.com/p/squeezelite/) for [Logitech Media Server](http://wiki.slimdevices.com/index.php/Logitech_Media_Server)

*TODO*:

- custom LuCI interface
- do not rely on libupnpp being pulled into upmpdcli source
- volume control by control points
- proper use of uClibc, currently libstdc++ is hard copied into the source path
- smooth network integration using WPS
