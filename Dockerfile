FROM python:3.6

RUN apt-get update
RUN mkdir workspace
COPY dl4us ./workspace/
RUN sudo apt-get install -y cmake
RUN sudo apt-get install -y swig
RUN pip install -r ./workspace/requirements.txt
RUN pip install opencv-python==3.4.2.17 --trusted-host pypi.python.org
#RUN jupyter notebook ./workspace/dl4us/ --port 8888

CMD echo "plz run docker-machine ip and run http://ip:8888"
