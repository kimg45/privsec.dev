#!/bin/bash

#F-Droid Security Analysis
rm -rf './content/apps/F-Droid Security Analysis.md'
curl https://raw.githubusercontent.com/Wonderfall/wonderfall.github.io/main/content/posts/fdroid-issues.md -o './content/apps/F-Droid Security Analysis.md'
sed -i 's/title:.*/title: "F-Droid Security Analysis"/' './content/apps/F-Droid Security Analysis.md'
sed -i '/date:.*/d' './content/apps/F-Droid Security Analysis.md'
sed -i '/draft:.*/d' './content/apps/F-Droid Security Analysis.md'
sed -i "s/tags:.*/tags: ['applications', 'android', 'security']/" './content/apps/F-Droid Security Analysis.md'
sed -i '/^tags:.*/a ShowCanonicalLink: true' './content/apps/F-Droid Security Analysis.md'
sed -i '/^tags:.*/a canonicalURL: https://wonderfall.dev/fdroid-issues' './content/apps/F-Droid Security Analysis.md'
sed -i '/^tags:.*/a author: Wonderfall' './content/apps/F-Droid Security Analysis.md'

#Docker and OCI Hardening
rm -rf './content/os/Docker and OCI Hardening.md'
curl https://raw.githubusercontent.com/Wonderfall/wonderfall.github.io/main/content/posts/docker-hardening.md -o './content/os/Docker and OCI Hardening.md'
sed -i 's/title:.*/title: "Docker and OCI Hardening"/' './content/os/Docker and OCI Hardening.md'
sed -i '/date:.*/d' './content/os/Docker and OCI Hardening.md'
sed -i '/draft:.*/d' './content/os/Docker and OCI Hardening.md'
sed -i "s/tags:.*/tags: ['operating systems', 'linux', 'container', 'security']/" './content/os/Docker and OCI Hardening.md'
sed -i '/^tags:.*/a ShowCanonicalLink: true' './content/os/Docker and OCI Hardening.md'
sed -i '/^tags:.*/a canonicalURL: https://wonderfall.dev/docker-hardening/' './content/os/Docker and OCI Hardening.md'
sed -i '/^tags:.*/a author: Wonderfall' './content/os/Docker and OCI Hardening.md'

#Securing OpenSSH with FIDO2
rm -rf './content/os/Securing OpenSSH with FIDO2.md'
curl https://raw.githubusercontent.com/Wonderfall/wonderfall.github.io/main/content/posts/openssh-fido2.md -o './content/os/Securing OpenSSH with FIDO2.md'
sed -i 's/title:.*/title: "Securing OpenSSH with FIDO2"/' './content/os/Securing OpenSSH with FIDO2.md'
sed -i '/date:.*/d' './content/os/Securing OpenSSH with FIDO2.md'
sed -i '/draft:.*/d' './content/os/Securing OpenSSH with FIDO2.md'
sed -i "s/tags:.*/tags: ['operating systems', 'linux', 'security']/" './content/os/Securing OpenSSH with FIDO2.md'
sed -i '/^tags:.*/a ShowCanonicalLink: true' './content/os/Securing OpenSSH with FIDO2.md'
sed -i '/^tags:.*/a canonicalURL: https://wonderfall.dev/openssh-fido2/' './content/os/Securing OpenSSH with FIDO2.md'
sed -i '/^tags:.*/a author: Wonderfall' './content/os/Securing OpenSSH with FIDO2.md'