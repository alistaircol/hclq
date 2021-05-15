FROM golang:alpine3.13 as builder
RUN go get -u github.com/mattolenik/hclq

FROM alpine:3.13 as production
COPY --from=builder /go/bin/hclq /usr/bin/hclq
RUN chmod +x /usr/bin/hclq
WORKDIR /workdir
ENTRYPOINT ["/usr/bin/hclq"]
