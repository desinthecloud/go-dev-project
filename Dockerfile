# Build stage
FROM golang:1.22-alpine AS build

WORKDIR /app

# 1. Copy go.mod (and go.sum if present), then download deps
COPY go.mod ./
# If you have a go.sum, uncomment the next line:
# COPY go.sum ./
RUN go mod download

# 2. Copy the rest of the code
COPY . .

# 3. Build the binary
RUN go build -o api ./cmd/api

# Runtime stage
FROM alpine:latest

WORKDIR /app

# Copy the built binary from the builder stage
COPY --from=build /app/api .

# Expose the port your app uses (we switched you to 8085)
EXPOSE 8085

CMD ["./api"]


