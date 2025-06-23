# Compose

## Environment

```shell
cp envs/compose.env .env
```

## Start

```shell
docker compose up -d
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
docker compose down
```
