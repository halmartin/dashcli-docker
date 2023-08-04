# About

[DASH](https://www.dmtf.org/standards/dash) is a remote management protocol similar to [IPMI](https://en.wikipedia.org/wiki/Intelligent_Platform_Management_Interface) or [Intel Active Management](https://www.intel.com/content/www/us/en/architecture-and-technology/vpro/overview.html) and is used for lights-out management of computer systems.

# Purpose

This repository containerises the Ubuntu packaged DASH client from AMD, so you can easily use DASH without running Ubuntu or cluttering your system with the DASH dependencies.

# Building

Running `make` will download the `dashcli` deb package from AMD, and install it in an Ubuntu 22.04 container.

As AMD only packages `dashcli` for AMD64 (x86_64), that is the only supported architecture.

# Usage

```
$ docker run -it --rm dashcli:latest
```

Refer to the output from `dashcli` (above) for DASH usage.

## Example

```
$ docker run -it --rm --network=host dashcli:latest -h 192.168.10.11 -S http -p 623 discover info


DASH system(s) discovered:
192.168.10.11:623
DASH Version       : 1.0.0
Product Vendor     : Dash Project
Product Version    : 1.0.0
Protocol Version   : http://schemas.dmtf.org/wbem/wsman/1/wsman.xsd
Security Profile(s): http://schemas.dmtf.org/wbem/wsman/1/wsman/secprofile/http/digest
http://schemas.dmtf.org/wbem/wsman/1/wsman/secprofile/https/digest
http://schemas.dmtf.org/wbem/wsman/1/wsman/secprofile/https/basic
```
