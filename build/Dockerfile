FROM gcr.io/hoprassociation/hoprd:latest-release
ARG DB_PASSWORD
VOLUME ["/app/db"]

# Admin web server
EXPOSE 3000
# REST API
EXPOSE 3001
# Healthcheck server
EXPOSE 8080

ENTRYPOINT ["/usr/bin/tini", "--", "yarn", "hoprd", "--password=${DB_PASSWORD}", "--init", "--admin", "--adminHost", "0.0.0.0", "--healthCheck", "--identity", "/app/db/.hopr-identity"]

