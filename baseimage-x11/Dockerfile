FROM baseimage-ssh

# Enable X11 forwarding for foreign hosts
RUN  sed -i -e 's/#X11UseLocalhost yes/X11UseLocalhost no/g' /etc/ssh/sshd_config

RUN apt-get update && \
    apt-get install -y xauth

RUN apt-get clean && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*
