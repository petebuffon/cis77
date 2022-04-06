FROM docker.io/python:slim

RUN apt update && apt install -y yara

RUN python -m pip install crypto volatility3
