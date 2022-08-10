FROM golang:latest as builder
WORKDIR /var/app
COPY app/ .
FROM golang:alpine3.16 
WORKDIR /var/app
COPY --from=builder /var/app .
CMD ["./hello"]