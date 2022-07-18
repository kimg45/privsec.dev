---
title: "Linux Insecurities"
tags: ['operating system', 'security', 'linux']
author: Tommy
---

There is a common misconception among privacy communities that Linux is one of the more secure operating systems, either because it is open source or because it is widely used in the cloud. However, this is a far cry from reality.

There is already a very in-depth technical blog explaining the various security weaknesses of Linux by Madaidan, [Whonix](https://www.whonix.org/)'s Security Researcher. This page will attempt to address some of the questions commonly raised in reaction to his blog post. You can find the original article [here](https://madaidans-insecurities.github.io/linux.html).

## Why is Linux used on servers if it is so insecure?

On servers, while most of the problems referenced in the article still exists, they are somewhat less problematic. 

On Desktop Linux, GUI applications run under your user, and thus have access to all of your files in `/home`. This is in contrast to how system daemons typically run on servers, where they have their own group and user. For example, NGINX will run under `nginx:nginx` on Red Hat distributions, or `www-data:www-data` on Debian based ones. Discreationary Access Control does help with filesystem access control for server processes, but is useless for desktop applications.

Another thing to keep in mind is that Mandatory Access Control is also somewhat effective on servers, as commonly run system daemons are confined. In contrast, on desktop, there is virtually no AppArmor profile to confine even regularly used apps like Chrome or Firefox, let alone less common ones. On SELinux systems, these apps run in the UNCONFINED SELinux domain.

Linux servers are lighter than Desktop Linux systems by order of magnitude, without hundreds of packages and dozens of system daemons running like X11, audio servers, printing stack, and so on. Thus, the attack surface is much smaller.

## Linux Hardening Myths

There is a common claim in response to Madaidan that Linux is only insecure by default, and that an experience user can make it the most secure operating system out there, surpassing the likes of macOS or ChromeOS. Unfortunately, this is wishful thinking. There is no amount of hardening that one can reasonably apply as a user to fix up the inherent issues with Linux.

### Lack of verified boot

macOS, ChromeOS, and Android have a clear distinction between the system and user installed application. In over simplified terms, the system volume is signed by the OS vendor, and the firmware and boot loader works to make sure that said volume has the authorized signature. The operating system itself is immutable, and nothing the user does will need or be allowed to tamper with the system volume.

On Linux, there is no such clear distinction between the system and user installed applications. Linux distributions are a bunch of packages put together to make a system that works, and thus every package is treated as part of said system. The end result is that binaries, regardless of whether they are vital for the system to function or just an extra application, are thrown into the same directories as each other (namely `/usr/bin` and `/usr/local/bin`). This makes it impossible for an end user to setup a verification mechanism to verify the integrity of "the system", as said "system" is not clearly defined in the first place.

### Lack of application sandboxing

Operating systems like Android and ChromeOS have full system mandatory access control, every process from the init process is strictly confined. Regardless of which application you install or how you install them, they have to play by the rules of an untrusted SELinux domain.

On Linux, it is quite the opposite. 

Work in progress...