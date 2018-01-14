#!/bin/sh -eux

# Only add the secure path line if it is not already present - Debian 7
# includes it by default.
grep -q 'secure_path' /etc/sudoers \
  || sed -i -e '/Defaults\s\+env_reset/a Defaults\tsecure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"' /etc/sudoers;

# Set up password-less sudo for the mauricio user
echo 'mauricio ALL=(ALL) NOPASSWD:ALL' >/etc/sudoers.d/99_mauricio;
chmod 440 /etc/sudoers.d/99_mauricio;
