FROM continuumio/anaconda3

LABEL maintainer="Stefan Kuethe <crazycapivara@gmail.com>"

RUN /opt/conda/bin/conda install jupyter -y --quiet \
  && mkdir /opt/notebooks

