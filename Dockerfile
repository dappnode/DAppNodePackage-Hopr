ARG UPSTREAM_VERSION
FROM europe-west3-docker.pkg.dev/hoprassociation/docker-images/hoprd:${UPSTREAM_VERSION}

# not used at the moment, but might be useful in the future
ENV DAPPNODE=true

ENTRYPOINT ["/bin/hoprd", "--configurationFilePath", "/app/hoprd.cfg.yaml"]
