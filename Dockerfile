ARG UPSTREAM_VERSION
FROM gcr.io/hoprassociation/hoprd:${UPSTREAM_VERSION}

# not used at the moment, but might be useful in the future
ENV DAPPNODE=true

ENTRYPOINT ["/usr/bin/tini", "--", "node", "./lib/main.cjs"]
