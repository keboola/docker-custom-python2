FROM quay.io/keboola/base-python2
MAINTAINER Ondrej Popelka <ondrej.popelka@keboola.com>

ENV APP_CUSTOM_VERSION 1.0.0

# setup the environment
WORKDIR /tmp
RUN pip install --no-cache-dir \
		PyYaml \
		httplib2 \
		virtualenv \ 
		mechanize \
		cookielib \
		BeautifulSoup \
		html2text

# prepare the container
WORKDIR /home

