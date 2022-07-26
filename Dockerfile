# start from Ubuntu Image latest
FROM ubuntu:22.04

# refresh the things
RUN apt-get update && apt-get install -y --no-install-recommends locales
RUN localedef -i de_DE -c -f UTF-8 -A /usr/share/locale/locale.alias de_DE.UTF-8 
RUN rm -rf /var/lib/apt/lists/*
ENV LANG de_DE.utf8

# terminalstuff
RUN apt-get install -y --no-install-recommends screen tree tmux bmon vim fping dnsutils
RUN rm -rf /var/lib/apt/lists/*
