FROM hendrikmaus/nomad-cli:1.6.1

RUN apk update && apk add bash gettext

WORKDIR /nomad-deploy
COPY deploy /nomad-deploy/deploy

ENTRYPOINT ["/nomad-deploy/deploy"]
