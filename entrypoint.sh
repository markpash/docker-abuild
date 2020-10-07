#!/bin/ash

adduser -D $ABUILD_USER
echo "$ABUILD_USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
addgroup $ABUILD_USER abuild
mkdir -p /var/cache/distfiles
mkdir -p /home/$ABUILD_USER/iso
chgrp abuild /var/cache/distfiles
chmod g+w /var/cache/distfiles
chown $ABUILD_USER:$ABUILD_USER /home/$ABUILD_USER/.abuild
chown $ABUILD_USER:$ABUILD_USER /home/$ABUILD_USER/packages
chown $ABUILD_USER:$ABUILD_USER /home/$ABUILD_USER/iso
su $ABUILD_USER
