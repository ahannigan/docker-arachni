FROM debian:8

ARG VERSION=1.4
ARG WEB_VERSION=0.5.10
ENV VERSION ${VERSION}
ENV WEB_VERSION ${WEB_VERSION}

RUN apt-get -qq update && \
    apt-get -qq install -y --no-install-recommends wget ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists

RUN mkdir /arachni && \
    wget -qO- https://github.com/Arachni/arachni/releases/download/v${VERSION}/arachni-${VERSION}-${WEB_VERSION}-linux-x86_64.tar.gz | tar xvz -C /arachni --strip-components=1

WORKDIR /arachni
EXPOSE 9292
