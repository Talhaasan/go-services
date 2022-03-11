FROM golang:1-alpine as build
ENV GO111MODULE=on
WORKDIR /app
COPY producer/main.go /app
COPY consumer/main.go /app
FROM alpine:latest
WORKDIR /app
COPY --from=build /app /app
EXPOSE 8180
ENTRYPOINT ["./service"]