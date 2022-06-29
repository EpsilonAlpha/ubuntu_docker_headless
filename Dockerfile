# Start from Ubuntu Image latest
FROM ubuntu:latest

# Language defined as "german"
RUN apt-get update && \
	apt-get install -y apt-utils locales && \
	rm -rf /var/lib/apt/lists/* \
	&& localedef -i de_DE -c -f UTF-8 -A /usr/share/locale/locale.alias de_DE.UTF-8
ENV LANG de_DE.utf8
