# Django Quickstart

Django application quickstart

## Requirements

- [Python 3](https://www.python.org/downloads/)
  - `brew install python@3.14`
- [Postgres](https://www.postgresql.org/download/)
  - `brew install postgresql@18`
- [Docker](https://docs.docker.com/get-started/get-docker/)
  - `brew install --cask docker-desktop`

## Development

Install aliases

```shell
cat ./scripts/.aliases >> ~/.zshrc
source ~/.zshrc
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
