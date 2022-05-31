# Easy Django

## Requirements

- [Docker](https://docs.docker.com/get-started/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Running Django

```
docker-compose up --build
```

## Executing manage.py comands

```
docker-compose exec web python manage.py --help
```

## Obtaining a shell

```
docker-compose exec web python manage.py shell
```

## Inspecting the database

Go to [http://localhost:8080](http://localhost:8080), use the user and password listed in the `docker-compose.yml`
