FROM golang:latest as builder
WORKDIR /var/app
COPY app/ .
FROM scratch
WORKDIR /var/app
COPY --from=builder /var/app .
CMD ["./hello"]