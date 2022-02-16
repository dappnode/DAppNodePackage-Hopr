ARG UPSTREAM_VERSION
FROM gcr.io/hoprassociation/hoprd:${UPSTREAM_VERSION}

#Entrypoint
ENTRYPOINT [ "sh", "-c", "exec /usr/bin/tini -- yarn hoprd \ 
    --password=\"$DB_PASSWORD\" \
    --init --admin \
    --adminHost=\"0.0.0.0\" \
    --rest \
    --restHost=\"0.0.0.0\" \
    --healthCheck \
    --healthCheckHost=\"0.0.0.0\" \
    --data=\"/app/db/data\" \
    --identity=\"/app/db/.hopr-id-athens\" \
    --apiToken=\"$API_TOKEN\" "]
