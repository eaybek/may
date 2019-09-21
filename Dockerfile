FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install \
    python3 \
    python3-venv \
    python3-pip

RUN pip3 install setuptools

COPY /home/erdem/Ws/PyPi/may/may/ /root/packages/may/
WORKDIR /root/packages/may
RUN pip3 install /root/packages/may

CMD ["python3","test/may.py"]


