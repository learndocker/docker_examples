FROM golang:1.9.2-alpine as builder

WORKDIR /go/src/app

COPY hello-world.go .

RUN go build hello-world.go

FROM alpine:3.6

COPY --from=builder /go/src/app/hello-world /

CMD /hello-world
