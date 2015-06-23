FROM debian:jessie

RUN apt-get update && apt-get install -y \
		mono-runtime \
	&& rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]

