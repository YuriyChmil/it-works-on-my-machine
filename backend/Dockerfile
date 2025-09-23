FROM golang:1.23 as builder

WORKDIR /go/src/
COPY . .

RUN GOOS=linux GOARCH=amd64 go build -o golang-demo  && chmod +x ./golang-demo


FROM gcr.io/distroless/static-debian11 as prod
USER nonroot:nonroot
ENTRYPOINT ["/go/src/golang-demo"]

FROM builder as stage
ENTRYPOINT ["tail", "-f", "/dev/null"]
# cd src/ & go run main.go memory.go ping.go root.go video.go fibonacci.go
