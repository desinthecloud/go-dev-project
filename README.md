# Go Dev Project

Simple Go HTTP API with:

- `/hello` endpoint
- Unit tests
- Makefile for common tasks
- Dockerized build and runtime

## Run locally

```bash
go run cmd/api/main.go
curl http://localhost:8085/hello

Run with Docker

docker build -t go-dev-project .
docker run -p 8085:8085 go-dev-project
curl http://localhost:8085/hello

