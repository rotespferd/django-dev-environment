FROM centos:7

MAINTAINER Marian Sievers

# update the system
RUN yum -y update && yum clean all

# install utilitis
RUN yum groupinstall -y development || true && yum clean all
RUN yum install -y wget source zlib-dev openssl openssl-devel sqlite-devel bzip2-devel xz-libs || true && yum clean all

# install python 3.4.3
RUN wget http://www.python.org/ftp/python/3.4.3/Python-3.4.3.tar.xz

RUN xz -d Python-3.4.3.tar.xz && tar -xvf Python-3.4.3.tar

RUN cd Python-3.4.3 && ./configure --prefix=/usr/local && make && make altinstall
RUN export PATH="/usr/local/bin:$PATH" && echo alias python='python3.4' >> /root/.bashrc && echo alias pip='pip3.4' >> /root/.bashrc

# install virtualenvwrapper

#RUN pip install virtualenvwrapper && \
#export WORKON_HOME=~/Envs && \
#mkdir -p $WORKON_HOME && \
#source /usr/local/bin/virtualenvwrapper.sh && \
#mkvirtualenv env1
