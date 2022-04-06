FROM docker.io/python:slim

RUN apt update && apt install -y yara

RUN mkdir /data

WORKDIR /data

RUN python -m pip install crypto volatility3

COPY ./symbols/* /usr/local/lib/python3.10/site-packages/volatility3/framework/symbols/linux/

CMD ["/bin/bash"]
