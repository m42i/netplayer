This is a source package repository for a OpenWrt buildroot. Mainly for the
TP-Link WR710N because it has 8MB flash.

*Usage*:

Put this inside your feeds.conf:

`src-git netplayer https://github.com/m42i/netplayer.git`

*Contains*:
- [upmpdcli](http://upmpdcli/) for UPnP/[OpenHome](http://OpenHome) compatible
  devices

*TODO*:

- AirPlay support
- custom LuCI interface
- do not rely on libupnpp being pulled into upmpdcli source
- volume control by control points
- proper use of uClibc, currently libstdc++ is hard copied into the source path
- smooth network integration using WPS
- squeezelite
