FROM quay.io/toolbx-images/almalinux-toolbox:9

LABEL com.github.containers.toolbox="true" \
      usage="This image is meant to be used with the toolbox or distrobox command" \
      summary="A cloud-native terminal experience" \
      maintainer="jorge.castro@gmail.com"

COPY extra-packages /
RUN dnf upgrade
RUN curl https://getmic.ro | bash
#RUN dnf install -y $(cat /extra-packages)
#RUN rm /extra-packages

#RUN   ln -fs /bin/sh /usr/bin/sh && \
     # ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/docker && \
      #ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/flatpak && \
#      ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/podman && \
     # ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/rpm-ostree && \
     # ln -fs /usr/bin/distrobox-host-exec /usr/local/bin/#transactional-update
     
