FROM golang

MAINTAINER Vishnu Nair "vishnu.nair66@gmail.com"

RUN apt-get update && \
    apt-get install -y vim

RUN go get github.com/tsenart/vegeta

RUN go install github.com/tsenart/vegeta

ENTRYPOINT [ "/bin/bash" ] 
#CMD [ "/go/bin/vegeta", "-h" ]
