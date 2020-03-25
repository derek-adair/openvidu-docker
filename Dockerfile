FROM maven
WORKDIR /usr/local/
RUN yum install -y git open-jdk-9-jdk
RUN git clone https://github.com/OpenVidu/openvidu-tutorials.git && \
    mv openvidu-tutorials/openvidu-js-java/* ./ && \
    rm -rf openvidu-tutorials
