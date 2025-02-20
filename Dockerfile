ARG UPSTREAM_VERSION
FROM europe-west3-docker.pkg.dev/hoprassociation/docker-images/hoprd:${UPSTREAM_VERSION}

# not used at the moment, but might be useful in the future
ENV DAPPNODE=true

ADD hoprd.cfg.yaml /app/hoprd.cfg.yaml
ADD entrypoint.sh /bin/entrypoint.sh

RUN chmod +rx /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]
