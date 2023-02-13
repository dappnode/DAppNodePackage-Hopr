ARG UPSTREAM_VERSION
FROM gcr.io/hoprassociation/hoprd:${UPSTREAM_VERSION}

ENV AVADO=true
ENTRYPOINT ["/usr/bin/tini", "--", "node", "./lib/main.cjs"]
