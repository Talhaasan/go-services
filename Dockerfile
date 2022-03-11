FROM golang:1-alpine as build
ENV GO111MODULE=on
WORKDIR /app
COPY go/producer/main.go /app
COPY go/consumer/main.go /app
FROM alpine:latest
WORKDIR /app
COPY --from=build /app /app
EXPOSE 8180
ENTRYPOINT ["./service"]