FROM docker.io/python:slim

RUN apt update && apt install -y yara

RUN mkdir /data

WORKDIR /data

RUN python -m pip install crypto volatility3

CMD ["/bin/bash"]
