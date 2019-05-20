FROM python:3

RUN apt-get update
RUN mkdir workspace
RUN cd workspace
RUN git clone https://github.com/matsuolab-edu/dl4us