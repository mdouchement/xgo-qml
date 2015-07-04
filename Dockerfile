FROM karalabe/xgo-latest
MAINTAINER mdouchement

# Go QML dependencies
RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:ubuntu-sdk-team/ppa
RUN apt-get update
RUN apt-get install qtdeclarative5-dev qtbase5-private-dev qtdeclarative5-private-dev libqt5opengl5-dev qtdeclarative5-qtquick2-plugin

RUN go get gopkg.in/qml.v1
