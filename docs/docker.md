# Docker

## Environment

```shell
cp envs/docker.env .env
```

## Build

```shell
docker build -t web .
```

## Run

```shell
docker run --detach --publish 8000:8000 --name web --env-file ./.env web
```

## Manage

```shell
docker exec -it web python manage.py migrate
docker exec -it web python manage.py createsuperuser
```

## Shell

```shell
docker exec -it web bash
```

## Stop

```shell
docker stop web
docker rm web
docker rmi web
```
