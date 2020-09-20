FROM golang:1-alpine as build

WORKDIR /opt/go-hello/hello-go
COPY . .
RUN go build main.go


#FROM golang:1-alpine as build

#WORKDIR /app
#COPY cmd cmd
#RUN go build hello.go

FROM alpine:latest

WORKDIR /app
COPY --from=build /opt/go-hello/hello-go/main /app/hello

EXPOSE 8180
ENTRYPOINT ["./main"]
