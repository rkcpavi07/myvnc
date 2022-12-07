from kalilinux/kali-rolling

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y


RUN apt-get install -y sudo dbus-x11 sudo bash net-tools novnc x11vnc xvfb supervisor xfce4 gnome-shell kali-desktop-gnome gnome-session gdm3 tasksel ssh terminator git nano curl wget zip unzip python3 python3-pip python-is-python3 iputils-ping docker.io falkon chromium


COPY novnc.zip /novnc.zip
COPY . /system

RUN unzip -o /novnc.zip -d /usr/share
RUN rm /novnc.zip

RUN chmod +x /system/assets/configs/websockify.sh
RUN chmod +x /system/supervisor.sh


CMD ["/system/supervisor.sh"]