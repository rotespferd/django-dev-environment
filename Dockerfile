FROM debian:8.0

MAINTAINER Marian Sievers

# update the system
RUN apt-get update

# install python 3
RUN apt-get install -y python3

# update the system
#RUN yum -y update && yum clean all

# install utilitis
#RUN yum groupinstall -y development || true && yum clean all
#RUN yum install -y wget source zlib-dev openssl openssl-devel sqlite-devel bzip2-devel xz-libs || true && yum clean all

# install python 3.4.3
#RUN wget http://www.python.org/ftp/python/3.4.3/Python-3.4.3.tar.xz

#RUN xz -d Python-3.4.3.tar.xz && tar -xvf Python-3.4.3.tar

#RUN cd Python-3.4.3 && ./configure --prefix=/usr/local && make && make altinstall
#RUN mv /usr/bin/python /usr/bin/python2 && ln /usr/local/bin/python3.4 /usr/bin/python && ln /usr/local/bin/pip3.4 /usr/bin/pip

#RUN pip install Django

# run application

#RUN mkdir -p /srv/src/app
# RUN source /usr/local/bin/virtualenvwrapper.sh && mkvirtualenv env1 && python manage.py runserver
#EXPOSE 8000

#WORKDIR /srv/src/app
#CMD python manage.py runserver 0.0.0.0:8000
