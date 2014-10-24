This is a source package repository for a OpenWrt buildroot. Mainly for the
TP-Link WR710N because it has 8MB flash.

*Usage*:

Put this inside your feeds.conf:

`src-git netplayer https://github.com/m42i/netplayer.git`

*TODO*:

- AirPlay support
- UPnP/OpenHome support
- custom LuCI interface
- volume control by control points
- proper use of uClibc, currently libstdc++ is hard copied into the source path
- smooth network integration using WPS
- squeezelite
