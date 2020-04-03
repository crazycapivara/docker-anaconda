FROM continuumio/anaconda3

LABEL maintainer="Stefan Kuethe <crazycapivara@gmail.com>"

RUN /opt/conda/bin/conda install jupyter -y --quiet \
  && mkdir /opt/notebooks \
  && pip install osmium

CMD [ "/opt/conda/bin/jupyter", "notebook --notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser", "--allow-root" ]

