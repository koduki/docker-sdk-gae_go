FROM alpine

ENV GAE_SDK_URL  https://storage.googleapis.com/appengine-sdks/featured/go_appengine_sdk_linux_amd64-1.9.35.zip
ENV GO_SDK_URL https://storage.googleapis.com/golang/go1.6.2.linux-amd64.tar.gz

# Base settings
RUN apk --update add wget unzip python git && rm -rf /var/cache/apk/*

# Install Google App engine with golang
RUN wget -O tmp.zip ${GAE_SDK_URL} && unzip tmp.zip -d /opt/ && rm tmp.zip

# Install golang
ENV GOROOT /usr/local/go
ENV GOPATH $HOME/go
ENV PATH $PATH:/opt/go_appengine/:$GOROOT/bin:$GOPATH/bin

RUN wget -O - ${GO_SDK_URL}|tar xfvz - -C /usr/local/
RUN go get github.com/zenazn/goji
