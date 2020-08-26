FROM land007/l4t-tensorflow:1.15.0

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