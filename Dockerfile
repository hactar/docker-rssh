FROM atmoz/sftp
MAINTAINER Stefan Gangefors

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install rssh rsync && \
    rm -rf /var/lib/apt/lists/*

COPY sshd_config /etc/ssh/sshd_config
COPY entrypoint /

EXPOSE 22

ENTRYPOINT ["/entrypoint"]
