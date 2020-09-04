FROM lsiobase/ubuntu:bionic

COPY sources.list /etc/apt/

RUN apt update && apt upgrade --yes && \
	apt install --yes python && \
	apt install --yes python3 python3-pip && \
	update-alternatives --install /usr/bin/python python /usr/bin/python2 100 && \
	update-alternatives --install /usr/bin/python python /usr/bin/python3 150 && \
	ln -s /usr/bin/pip3 /bin/pip && \
	pip install autoremove-torrents && \
	apt clean && \
	rm -rf \
		/tmp/* \
		/var/lib/apt/lists/* \
		/var/tmp/*
