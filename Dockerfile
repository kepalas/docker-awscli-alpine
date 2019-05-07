FROM alpine:3.9

LABEL maintainer="Tadas Kepalas <tadas@kepalas.lt>"

RUN apk add --no-cache --update-cache python py-pip bash \
    && pip install awscli \
    && apk del --purge py-pip

CMD ["/bin/bash"]