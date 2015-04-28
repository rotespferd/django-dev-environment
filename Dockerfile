FROM debian:8.0

MAINTAINER Marian Sievers

# update the system
RUN apt-get update

# install some tools
RUN apt-get install -y wget

# install python 3
RUN apt-get install -y python3

# install pip
RUN wget https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py

#RUN mv /usr/bin/python /usr/bin/python2 && ln /usr/local/bin/python3.4 /usr/bin/python && ln /usr/local/bin/pip3.4 /usr/bin/pip

#RUN pip install Django

# run application

#RUN mkdir -p /srv/src/app
# RUN source /usr/local/bin/virtualenvwrapper.sh && mkvirtualenv env1 && python manage.py runserver
#EXPOSE 8000

#WORKDIR /srv/src/app
#CMD python manage.py runserver 0.0.0.0:8000
