FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y python
RUN apt-get install python3-pip
RUN pip install pipreqs
COPY webapp /home/
RUN cd /home/webapp && pipreqs && pip install -r requirements.txt
WORKDIR /home/webapp 

CMD ['python','main.py']