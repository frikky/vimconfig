# Analysis
Digital forensics tools that might be necessary for different processes. Automated installation should be finished here.

## Resources
* http://sift.readthedocs.io/en/latest/cheatsheet/index.html
* https://digital-forensics.sans.org/blog/2010/10/04/digital-forensic-imaging-vmware-esxi
* https://www.sans.org/reading-room/whitepapers/forensics/forensic-images-viewing-pleasure-35447
* https://eforensicmag.com/finding-advanced-malware-using-volatility/
* https://github.com/wtsxDev/Malware-Analysis

# Disk:
## Aquisition
* FTK imager
* Physical Write-blocker 
* Powerforensics (?) 

## Mounting
Tools:
* ewf-tools: 			EWF image mounting
* afflib-tools: 		Affuse for split images (mountpoint)
* sleuthkit:   			Tools for forensics analysis on volume and filesystem data
* plaso (log2timeline): Super timeline all the things

Usage:
```bash
$ ewfmount image.E01 mountpoint
$ affuse image.E01 mountpoint
```

Example:
```bash
$ ewfmount hostname.E01 /mnt/ewfmount
$ mount -o loop,ro,noexec,show_sys_files /mnt/ewfmount/E01 /mnt/mountpoint
```

# Memory
## Aquasition
* FTK
* Carbon Black (clients)

## Analysis
* Volatility

# Timelining (mem & disk)
* Yara
* Can use hashes 
