FROM phusion/baseimage:latest

RUN rm -f /etc/service/sshd/down

#RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

COPY key.pub /tmp/key.pub

RUN cat /tmp/key.pub >> /root/.ssh/authorized_keys && \
    rm -f /tmp/key.pub && \
    rm -f /etc/insecure_key* /usr/sbin/enable_insecure_key

#RUN  sed -i -e 's/#X11UseLocalhost yes/X11UseLocalhost no/g' /etc/ssh/sshd_config
