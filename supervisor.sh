
mkdir -p /Desktop
cat << EOF >  /Desktop/Chromium.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Chrome
Comment=Access the Internet
Exec=/usr/bin/chromium --no-sandbox --disable-dev-shm-usage
Icon=chromium
Path=
Terminal=false
StartupNotify=true
EOF

set -ex
exec supervisord -c /system/supervisord.conf