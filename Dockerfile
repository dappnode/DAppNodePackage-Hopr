ARG UPSTREAM_VERSION
FROM gcr.io/hoprassociation/hoprd:${UPSTREAM_VERSION}

ENTRYPOINT [ "/usr/bin/tini", "--", "yarn", "hoprd"]
