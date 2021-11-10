## How to disable Live Preview in Adobe XD
- Right click **Adobe XD.app**
- Click **Show Package Contents**
- Open **Contents/Frameworks**
- Backup original **libusb-1.0.23.dylib** file (by adding postfix '.bak' or '.enable' or something in the filename)
- Download libusb-1.0.23.dylib from release: https://github.com/ntanvinh/libusb_disable_live_preview_adobe_xd/releases/tag/v1 (or copy output from compiled souce code by yourself) to Contents/Frameworks
- Open Adobe XD.app and see if it works.
- DONE!

p/s: The bash script **ToggleLivePreviewXD.sh** in folder **handy_script** will auto download modified-lib process with **curl** and help toggle Live Preview mode in case you need it again.

## Orignal Contents
[![Build Status](https://travis-ci.org/libusb/libusb.svg?branch=master)](https://travis-ci.org/libusb/libusb)
[![Build status](https://ci.appveyor.com/api/projects/status/xvrfam94jii4a6lw?svg=true)](https://ci.appveyor.com/project/LudovicRousseau/libusb)
[![Coverity Scan Build Status](https://scan.coverity.com/projects/2180/badge.svg)](https://scan.coverity.com/projects/libusb-libusb)

libusb is a library for USB device access from Linux, macOS,
Windows, OpenBSD/NetBSD and Haiku userspace.
It is written in C (Haiku backend in C++) and licensed under the GNU
Lesser General Public License version 2.1 or, at your option, any later
version (see [COPYING](COPYING)).

libusb is abstracted internally in such a way that it can hopefully
be ported to other operating systems. Please see the [PORTING](PORTING)
file for more information.

libusb homepage:
http://libusb.info/

Developers will wish to consult the API documentation:
http://api.libusb.info

Use the mailing list for questions, comments, etc:
http://mailing-list.libusb.info

- Hans de Goede <hdegoede@redhat.com>
- Xiaofan Chen <xiaofanc@gmail.com>
- Ludovic Rousseau <ludovic.rousseau@gmail.com>
- Nathan Hjelm <hjelmn@cs.unm.edu>
- Chris Dickens <christopher.a.dickens@gmail.com>

(Please use the mailing list rather than mailing developers directly)
