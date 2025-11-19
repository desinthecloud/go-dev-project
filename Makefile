run:
	go run cmd/api/main.go

test:
	go test ./...

build:
	go build -o bin/api cmd/api/main.go

