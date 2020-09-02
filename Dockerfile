#FROM land007/l4t-tensorflow:1.15.0
FROM land007/l4t-tensorflow:1.15.0_18.04
#docker build -t land007/l4t-tensorflow-test:18.04 .
#docker run -it --rm --runtime nvidia land007/l4t-tensorflow-test:18.04 bash

#docker build -t land007/l4t-golang-tensorflow-test:18.04 .
#docker run -it --rm --runtime nvidia land007/l4t-golang-tensorflow-test:18.04 bash

#FROM land007/l4t-golang-tensorflow:1.15.0
#docker build -t land007/l4t-golang-tensorflow-test:latest .
#docker run -it --rm --runtime nvidia land007/l4t-golang-tensorflow-test:latest bash

MAINTAINER Jia Yiqiu <yiqiujia@hotmail.com>

RUN apt-get install -y cmake
RUN cd /opt && \
    git clone --depth 1 https://github.com/Neargye/hello_tf_c_api && \
    cd hello_tf_c_api && \
    mkdir build && \
    cd build && \
    cmake -G "Unix Makefiles" .. && \
    cmake --build .

#docker build -t land007/l4t-tensorflow-test:latest .
#docker run -it --rm --runtime nvidia land007/l4t-tensorflow-test:latest bash