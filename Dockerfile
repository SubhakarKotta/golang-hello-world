FROM golang:1.12.0-alpine3.9
ARG VCS_REF
ARG BUILD_DATE


LABEL org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.name="golang-hello-world" \
      org.label-schema.url="https://hub.docker.com/r/subhakarkotta/golang-hello-world/" \
      org.label-schema.vcs-url="https://github.com/subhakarkotta/golang-hello-world" \
      org.label-schema.build-date=$BUILD_DATE
      
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main .
CMD ["/app/main"]