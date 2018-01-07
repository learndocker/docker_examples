FROM golang:1.9.2-alpine

WORKDIR /go/src/app

COPY hello-world.go .

RUN go build hello-world.go

CMD ./hello-world
