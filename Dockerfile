FROM ubuntu:trusty
MAINTAINER Robert Glas "robert.glas.muenchen@gmail.com"

# python and relevant tools
RUN apt-get update && apt-get install -y \ 
    curl \
    build-essential \
    python \
    python-dev \
    libxml2-dev \
    libxslt-dev \
    libssl-dev \
    zlib1g-dev \
    libyaml-dev \
    libffi-dev \
    firefox \
    xvfb \ 
    python-pip

# General dev tools
RUN apt-get install -y git

# Latest versions of python tools via pip
RUN pip install --upgrade pip \
                          virtualenv \
                          requests
                          
RUN pip install selenium \
                          behave \ 
                          xvfbwrapper

