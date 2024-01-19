FROM golang:1.16-buster AS builder

WORKDIR /app

COPY go.mod main.go ./

RUN go build -o hello-fullcycle .

ENTRYPOINT ["./hello-fullcycle"]