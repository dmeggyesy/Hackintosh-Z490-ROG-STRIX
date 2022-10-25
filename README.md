# Hackintosh-Z490-ROG-STRIX
Hackintosh ASUS ROG STRIX Z490-A GAMING

## Build
|||
|-|-|
|Motherboard|ASUS ROG STIX Z490-A|
|CPU|i9-10900k|
|GPU|AMD RX580 + AMD RX570|
|RAM|Corsair Vengeance RGB PRO - DDR4 3200Mhz (4x 32G)|
|Storage|NVME 1TB Seagate Baracuda 510 + Kingston A2000 1TB (Arch/Windows)|
|BT/WIFI|BCM94360NG M.2 |


### Motherboard - Z490-A ROG STRIX:
|||
|-|-|
|Ethernet|Intel I225-V 2.5Gb Ethernet|
|Audio|S1220A (Realtek ALC1150)|
|BIOS|ver. |

### CPU - i9-10900K
|||
|-|-|
|igpu|Intel UHD Graphics 630|

### Required Kexts
* AppleALC
* Lilu
* NVMeFix
* VirtualSMC
* WhateverGreen
* USB-Map (create own)
* SMCProcessor (opt)
* SMCSuperIO (opt)


### Purple tint DVI Fix

macOS detected the RX570's DVI ports as being connected to TVs and thus was not sending RGB.  This can be fixed by dropping monitor specific overrides into `/Library/Displays/Contents/Resources/Overrides/` and generated using the patch EDID script.

### USB Mapping
This board has the following mapping:
(This is inside a NZXT 510 Elite - it has a single front USBc connected to the gen2 internal connector and a single front USB3 Type-A connected to the gen1 header)
|||
|-|-|
|HS01|USB3 - Back - Blue - Top-Top (As USB2)|
|HS02|USB3 - Back - Blue - Top-Bottom (As USB2)|
|HS03|USB3 - Back - Red - Top (As USB2)|
|HS04|USB-C Back (As USBB2)|
|HS05|USB-C Front (As USB2)|
|HS06|Internal USB2.0 Header (Both)|
|HS07| Unused|
|HS08|USB3 - Front (As USB2)|
|HS09|USB3 - Back - Blue - Bottom-Top (As USB2)|
|HS10|USB3 - Back - Blue - Bottom-Bottom (As USB2)|
|HS11|Internal AURA LED Connector|
|HS12|USB2 - Back - Black - Top|
|HS13|USB2 - Back - Black - Bottom (BIOS)|
|HS14|Internal BT Connector (M.2)|
|SS01|USB3 - Back - Blue - Top-Top|
|SS02|USB3 - Back - Blue - Top-Bottom|
|SS03|USB3 - Back - Red - Top|
|SS04|USB-C - Back (As USB3) (Switching)|
|SS05|USB-C - Front (As USB3) (Orientation A)|
|SS06|USB-C - Front (As USB3) (Orientation B)|
|SS07|Unused|
|SS08|USB3 - Front|
|SS09|USB3 - Back - Blue - Bottom-Top|
|SS10|USB3 - Back - Blue - Bottom-Bottom|

Note, the two USB2 headers are internally one connector (ASUS essentially has them behind a 'hub').
Included is a USBPortsAll.kext - this includes all the mapped ports.  This needs to be edited down to the 15 ports that are used.
There seems to be no real disadvantage to omitting the AURA Connector.

### iGPU / HDMI Audio
This build uses the iGPU in processing mode only, and doesn't require HDMI audio at all.

### Fixing Sleep
If any sleep issues - follow OpenCore Post-Install guide.
Basically:
```
sudo pmset autopoweroff 0
sudo pmset powernap 0
sudo pmset standby 0
sudo pmset proximitywake 0
sudo pmset tcpkeepalive 0
```

### Fixing Ethernet in Monterey -> Ventura
The intel i225v chipset requires a bootarg to prevent crashing when getting an IP address:
```
change boot arg “dk.e1000=0” to just “e1000=0” (or have both, it’s fine)
```

References:
* ASUS ROG STRIX Z490A Specs - https://rog.asus.com/au/motherboards/rog-strix/rog-strix-z490-a-gaming-model/
* i9-10900k Specs - https://ark.intel.com/content/www/us/en/ark/products/199332/intel-core-i9-10900k-processor-20m-cache-up-to-5-30-ghz.html
* OpenCore Install Guide - https://dortania.github.io/OpenCore-Install-Guide/
* gibMacOs - https://github.com/corpnewt/gibMacOS
* MountEFI - https://github.com/corpnewt/MountEFI
* ProperTree - https://github.com/corpnewt/ProperTree
* OpenCorePkg - https://github.com/acidanthera/OpenCorePkg/releases/tag/0.6.1
* Anti-Hackintosh Buyers Guide - https://dortania.github.io/Anti-Hackintosh-Buyers-Guide/Motherboard.html
* Z490 USBInjectAll - https://www.reddit.com/r/hackintosh/comments/gvdrns/i7_10700k_rog_strix_z490a_gaming_rx_590/
* OpenCore Comet Lake - https://dortania.github.io/OpenCore-Install-Guide/config.plist/comet-lake.html#deviceproperties
* Hackintosh-ROG-STRIX-Z490l - https://github.com/jergoo/Hackintosh-ROG-STRIX-Z490I
* Force RGB from DVI-D - https://www.reddit.com/r/MacOS/comments/dkowz1/instructions_for_forcing_rgb_mode_in_catalina/
* Patch EDID - https://gist.github.com/adaugherity/7435890
* Opencore post-install - https://dortania.github.io/OpenCore-Post-Install/universal/sleep.html
* PSA: Monterey 12.3 and I225V Panics - https://www.reddit.com/r/hackintosh/comments/tf4hpy/psa_monterey_123_and_i225v_panics_use_bootarg/
