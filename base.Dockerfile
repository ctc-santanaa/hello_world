FROM ubuntu:bionic

# install devtools
RUN echo "Installing dev tools" && \
    apt-get update && \
    apt-get install -y build-essential 
COPY ./ /prototype
WORKDIR /prototype/
ARG CXX="-g -O3"
RUN g++ $CXX -o prototype main.cpp
