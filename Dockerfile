ARG UPSTREAM_VERSION
FROM europe-west3-docker.pkg.dev/hoprassociation/docker-images/hoprd:${UPSTREAM_VERSION}

# not used at the moment, but might be useful in the future
ENV DAPPNODE=true

ENTRYPOINT ["/usr/bin/tini", "--", "node", "./lib/main.cjs"]
