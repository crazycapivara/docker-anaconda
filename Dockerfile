FROM continuumio/anaconda3

LABEL maintainer="Stefan Kuethe <crazycapivara@gmail.com>"

RUN /opt/conda/bin/conda install jupyter -y --quiet \
  && mkdir /opt/notebooks \
  && pip install osmium

RUN useradd bender --create-home --shell /bin/bash \
  && echo bender:bender | chpasswd \
  && addgroup anaconda \
  && usermod -a -G anaconda bender

USER bender

WORKDIR /home/bender

#CMD [ "/opt/conda/bin/jupyter", "notebook --notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser", "--allow-root" ]
CMD [ "/opt/conda/bin/jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser" ]

