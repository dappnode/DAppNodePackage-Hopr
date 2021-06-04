FROM gcr.io/hoprassociation/hoprd:latest
ARG DB_PASSWORD
VOLUME ["/app/db"]

# Admin web server
EXPOSE 3000
# REST API
EXPOSE 3001
# Healthcheck server
EXPOSE 8080

ENTRYPOINT ["node", "/app/index.js", "--password=${DB_PASSWORD}", "--init", "--admin", "--adminHost", "0.0.0.0", "--healthCheck", "--identity", "/app/db/.hopr-identity"]

