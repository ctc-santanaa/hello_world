FROM prototype/base

RUN echo "Installing debugger" && \
    apt-get install -y cgdb

CMD /usr/bin/cgdb prototype
