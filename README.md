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
$ docker build -f Dockerfile.theme -t keycloak:4.1.0.Final.CustomTheme .
$ docker-compose -f docker-compose-theme.yml up -d
```

## Run behind a proxy

To run an example who use Keycloak under an Nginx proxy run:

```bash
$ docker build -f Dockerfile.proxy -t keycloak:4.1.0.Final.Proxy .
$ docker-compose -f docker-compose-proxy.yml up -d
```

Once the containers are up & running, open `http://localhost/keycloak/auth` to use Keycloak.