FROM golang:1.9.2-alpine

WORKDIR /go/src/app

COPY app.go .

RUN go build app.go

CMD ["./app"]
