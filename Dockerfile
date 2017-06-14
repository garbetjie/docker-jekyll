FROM jekyll/builder:latest

RUN apk add --no-cache curl python py2-pip python2-dev openssl-dev \
	&& pip --no-cache-dir install pyopenssl \
	&& curl https://sdk.cloud.google.com > /tmp/sdk.sh \
	&& bash /tmp/sdk.sh --disable-prompts --install-dir=/opt \
	&& apk del --no-cache --purge python2-dev openssl-dev py2-pip \
	&& rm -fr /tmp/*