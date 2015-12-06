FROM quay.io/keboola/base-python2
MAINTAINER Ondrej Popelka <ondrej.popelka@keboola.com>

ENV DOCKER_CUSTOM_VERSION 0.0.2

RUN yum -y update && \
	yum -y install \
		libxml2-devel \
		libxslt-devel \
		&& \
	yum clean all

# setup the environment
WORKDIR /tmp
RUN pip install --no-cache-dir \
		PyYaml \
		httplib2 \
		virtualenv \ 
		mechanize \
		BeautifulSoup \
		html2text \
		lxml

# prepare the container
WORKDIR /home

