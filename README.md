# Django Quickstart

Django application quickstart

## Requirements

- [Python 3](https://www.python.org/downloads/)
- [Postgres](https://www.postgresql.org/download/)
- [Docker](https://docs.docker.com/get-started/get-docker/)

## Development

```shell
source scripts/.aliases
init
db
run
```

## Aliases

Load shell aliases

```shell
source scripts/.aliases
```

## Scripts

Available scripts to automate common development tasks

Script | Description
---|---
init | Create virtual environment and install dependencies
db | Create user and database, apply migrations, load fixtures
lint | Run ruff linting
run | Run the application using gunicorn
test | Run test suite using pytest

## Deployment

See [Docker](/docs/docker.md) or [Compose](/docs/compose.md).
