FROM python:3

RUN apt-get update
RUN mkdir workspace
COPY dl4us ./workspace/
#RUN pip install -r ./workspace/dl4us/requirements.txt
RUN pip install opencv-python==3.3.0.10 --trusted-host pypi.python.org
#RUN jupyter notebook ./workspace/dl4us/ --port 8888

CMD echo "plz run docker-machine ip and run http://ip:8888"
