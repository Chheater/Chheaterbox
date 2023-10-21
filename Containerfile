FROM quay.io/toolbx-images/archlinux-toolbox:latest

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience" \
      maintainer="jorge.castro@gmail.com"

RUN sudo pacman -Syu --noconfirm
RUN sudo pacman-key --init
COPY extra-packages /
RUN sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
RUN sudo pacman-key --lsign-key 3056513887B78AEB
RUN sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' --noconfirm
#RUN curl https://getmic.ro | bash
#RUN mv /micro /usr/bin/
#RUN zypper install -y $(cat /extra-packages)
#RUN rm /extra-packages

#RUN   ln -fs /bin/sh /usr/bin/sh && \
     # ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/docker && \
      #ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/flatpak && \
#      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/podman && \
     # ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/rpm-ostree && \
     # ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/#transactional-update
     
