FROM python:3

RUN apt-get update
RUN mkdir workspace
RUN cd workspace
RUN git clone https://github.com/matsuolab-edu/dl4us
RUN pip install -r ./dl4us/requirements.txt --trusted-host pypi.python.org
RUN jupyter notebook ./dl4us/ --port 8888

CMD echo "plz run docker-machine ip and run http://ip:8888"