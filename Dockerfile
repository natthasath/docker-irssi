FROM ubuntu:latest
ENV DEBCONF_NOWARNINGS="yes"
RUN apt-get update && apt-get install -y nocache irssi --reinstall ca-certificates
RUN groupadd irssi && useradd -ms /bin/sh -g irssi irssi
RUN mkdir -p /home/irssi/.irssi
RUN chown -R irssi:irssi /home/irssi/.irssi

USER irssi

ENTRYPOINT ["/usr/bin/irssi"]