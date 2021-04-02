FROM ubuntu:xenial
RUN apt update -y
RUN apt install software-properties-common vim tmux git curl build-essential -y
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt update -y
RUN apt install python3.9 python3.9-distutils -y
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3.9 get-pip.py
RUN rm get-pip.py
RUN rm /usr/bin/python3
RUN ln -s /usr/bin/python3.9 /usr/bin/python3
RUN ln -s /usr/bin/python3 /usr/bin/python
