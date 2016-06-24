FROM phusion/baseimage:latest


RUN apt-get update && apt-get -y upgrade && \
    apt-get -y install git libauthen-ntlm-perl libcrypt-ssleay-perl \
    libdigest-hmac-perl libfile-copy-recursive-perl libio-compress-perl \
    libio-socket-inet6-perl libio-socket-ssl-perl libio-tee-perl libmodule-scandeps-perl \
    libnet-ssleay-perl libpar-packer-perl libterm-readkey-perl libtest-pod-perl \
    libtest-simple-perl libunicode-string-perl liburi-perl cpanminus build-essential

RUN cd /opt && git clone https://github.com/imapsync/imapsync.git
RUN cpanm Data::Uniqid Mail::IMAPClient

ADD imapsync.sh /usr/local/bin/imapsync.sh
RUN chmod +x /usr/local/bin/imapsync.sh

CMD ["/usr/local/bin/imapsync.sh"]
