FROM ubuntu

ENV URL https://storage.googleapis.com/appengine-sdks/featured/go_appengine_sdk_linux_amd64-1.9.35.zip
ENV SDK_NAME go_appengine_sdk_linux_amd64-1.9.35.zip

RUN apt-get install -y wget unzip python

RUN wget ${URL}
RUN unzip ${SDK_NAME}
RUN rm -rf ${SDK_NAME}
RUN mv go_appengine /opt/
ENV PATH /opt/go_appengine/:$PATH