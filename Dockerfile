ARG HELM_VERSION=v3.8.0

FROM devth/helm:${HELM_VERSION}

ARG SOPS_VERSION=v3.7.1

ADD https://github.com/mozilla/sops/releases/download/${SOPS_VERSION}/sops-${SOPS_VERSION}.linux /usr/local/bin/sops

RUN chmod +x /usr/local/bin/sops

RUN apk update && apk add mysql-client && rm -fr /var/cache/apk
