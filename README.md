# Keycloak DOJO (with Docker)

This repo contain some experiments with Keycloak in a Docker environment.

To run the official image with postgres for the storage sun:

```bash
$ docker-compose -f docker-compose-base.yml up -d
```

Once the containers are up & running, open `http://localhost:8080` to use Keycloak.

## Custom template

To run an example who already has some custom themes into the running container, run:

```bash
$ ./download-themes.sh
$ docker build . -t keycloak:4.1.0.Custom
$ docker-compose -f docker-compose-custom.yml up -d
```